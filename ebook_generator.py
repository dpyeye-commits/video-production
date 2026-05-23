#!/usr/bin/env python3
"""
CINE_ENGINE Ebook Generator
Google Gemini (free tier via AI Studio) + pandoc → EPUB

무료 API 키 발급: https://aistudio.google.com/apikey
환경변수에 키를 넣어 실행하세요:
    export GEMINI_API_KEY="..."   # 또는 GOOGLE_API_KEY
"""

import os
import sys
import time
import subprocess
import argparse
from pathlib import Path

from google import genai
from google.genai import types
from google.genai import errors as genai_errors

# ── Config ──────────────────────────────────────────────────────────────────
# 무료 등급에서 잘 도는 기본 모델. 더 좋은 결과가 필요하면 --model gemini-2.5-pro
MODEL = "gemini-2.5-flash"
OUTPUT_DIR = Path(__file__).parent / "ebooks"
MAX_RETRIES = 3
RETRY_BACKOFF_SEC = 20  # 무료 등급 rate limit(429) 대비 지수 백오프 기준값

# NOTE: 본문만 출력하도록 지시한다. 제목/장 표기는 스크립트(build_markdown)가 붙이므로
# 모델이 '#'·'##' 헤딩이나 '1장' 같은 라벨을 넣으면 pandoc 목차와 충돌한다.
_NO_HEADING = ("Output body prose only. Do NOT include any markdown headings (#, ##), "
               "title lines, or chapter labels like '1장'. You MAY use **bold** and bullet lists.")

CHAPTER_PROMPTS = {
    "intro":      "Write an engaging introduction for an ebook titled '{title}'. Topic: {topic}. "
                  "Include the book's thesis and what readers will learn. 500-700 words in Korean. " + _NO_HEADING,
    "chapter":    "Write the chapter '{chapter_title}' (chapter {num}) for an ebook about '{topic}'. "
                  "Provide practical insights, examples, and key takeaways. 700-900 words in Korean. " + _NO_HEADING,
    "conclusion": "Write a compelling conclusion for an ebook titled '{title}' about '{topic}'. "
                  "Summarize key insights and inspire action. 400-500 words in Korean. " + _NO_HEADING,
}


def strip_headings(text: str) -> str:
    """모델이 실수로 넣은 마크다운 H1~H6 헤딩 줄을 제거(본문 구조 보호)."""
    return "\n".join(
        line for line in text.splitlines()
        if not line.lstrip().startswith("#")
    ).strip()

EPUB_METADATA = """\
---
title: "{title}"
author: "{author}"
lang: ko
rights: "© {author}"
---

"""


def get_api_key() -> str:
    key = os.environ.get("GEMINI_API_KEY") or os.environ.get("GOOGLE_API_KEY")
    if not key:
        print(
            "Error: GEMINI_API_KEY(또는 GOOGLE_API_KEY)가 설정되지 않았습니다.\n"
            "무료 키 발급: https://aistudio.google.com/apikey\n"
            '발급 후:  export GEMINI_API_KEY="..."'
        )
        sys.exit(1)
    return key


def check_pandoc():
    result = subprocess.run(["pandoc", "--version"], capture_output=True)
    if result.returncode != 0:
        print("Error: pandoc is not installed. Run: brew install pandoc")
        sys.exit(1)


def generate_chapter(client: genai.Client, model: str, prompt: str, chapter_label: str) -> str:
    print(f"  Generating {chapter_label}...", end=" ", flush=True)

    for attempt in range(1, MAX_RETRIES + 1):
        try:
            full_text = ""
            for chunk in client.models.generate_content_stream(
                model=model,
                contents=prompt,
                config=types.GenerateContentConfig(
                    max_output_tokens=4000,
                    temperature=0.9,
                ),
            ):
                if chunk.text:
                    full_text += chunk.text

            text = strip_headings(full_text)
            if not text:
                raise RuntimeError("빈 응답(안전 필터 또는 토큰 한도일 수 있음)")

            print("done")
            return text

        except genai_errors.APIError as exc:
            # 429(rate limit)·503 등 일시적 오류는 백오프 후 재시도 (무료 등급 대비)
            transient = getattr(exc, "code", None) in (429, 500, 503)
            if transient and attempt < MAX_RETRIES:
                wait = RETRY_BACKOFF_SEC * attempt
                print(f"\n    rate limit/일시 오류(코드 {exc.code}). {wait}s 대기 후 재시도 "
                      f"({attempt}/{MAX_RETRIES})...", end=" ", flush=True)
                time.sleep(wait)
                continue
            print(f"FAILED\n  Gemini API 오류: {exc}")
            sys.exit(1)

    print("FAILED\n  최대 재시도 횟수를 초과했습니다.")
    sys.exit(1)


def build_markdown(title: str, author: str, chapters: list[str], chapter_titles: list[str]) -> str:
    md = EPUB_METADATA.format(title=title, author=author)

    # chapters = [intro, *main, conclusion]
    md += f"# 들어가며\n\n{chapters[0]}\n\n"
    for i, ch_title in enumerate(chapter_titles, 1):
        md += f"# {i}장. {ch_title}\n\n{chapters[i]}\n\n"
    md += f"# 마치며\n\n{chapters[-1]}\n\n"

    return md


def markdown_to_epub(md_path: Path, epub_path: Path, title: str):
    print(f"  Converting to EPUB...", end=" ", flush=True)
    result = subprocess.run(
        [
            "pandoc",
            str(md_path),
            "-o", str(epub_path),
            "--epub-metadata=/dev/stdin",
            "--toc",
            "--toc-depth=1",
        ],
        input=f"<dc:title>{title}</dc:title>",
        capture_output=True,
        text=True,
    )
    if result.returncode != 0:
        # Fallback without metadata stdin
        result = subprocess.run(
            ["pandoc", str(md_path), "-o", str(epub_path), "--toc"],
            capture_output=True, text=True,
        )
    if result.returncode != 0:
        print(f"FAILED\n{result.stderr}")
        sys.exit(1)
    print("done")


def generate_ebook(title: str, topic: str, author: str, chapter_titles: list[str], model: str):
    check_pandoc()
    api_key = get_api_key()

    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
    safe_title = title.replace(" ", "_").replace("/", "-")
    md_path = OUTPUT_DIR / f"{safe_title}.md"
    epub_path = OUTPUT_DIR / f"{safe_title}.epub"

    client = genai.Client(api_key=api_key)

    print(f"\n📖 Generating: {title}")
    print(f"   Model: {model} (Gemini 무료 등급 가능)")
    print(f"   Topic: {topic}")
    print(f"   Chapters: intro + {len(chapter_titles)} + conclusion\n")

    chapters = []

    # Introduction
    prompt = CHAPTER_PROMPTS["intro"].format(title=title, topic=topic)
    chapters.append(generate_chapter(client, model, prompt, "introduction"))

    # Main chapters
    for i, ch_title in enumerate(chapter_titles, 1):
        prompt = CHAPTER_PROMPTS["chapter"].format(
            num=i, chapter_title=ch_title, topic=topic
        )
        chapters.append(generate_chapter(client, model, prompt, f"chapter {i}: {ch_title}"))

    # Conclusion
    prompt = CHAPTER_PROMPTS["conclusion"].format(title=title, topic=topic)
    chapters.append(generate_chapter(client, model, prompt, "conclusion"))

    # Assemble markdown
    md_content = build_markdown(title, author, chapters, chapter_titles)
    md_path.write_text(md_content, encoding="utf-8")
    print(f"\n  Markdown saved → {md_path.name}")

    # Convert to EPUB
    markdown_to_epub(md_path, epub_path, title)
    print(f"  EPUB saved    → {epub_path}")
    print(f"\n✅ Done! Open: {epub_path}\n")


def main():
    parser = argparse.ArgumentParser(description="AI Ebook Generator (Gemini + pandoc)")
    parser.add_argument("--title",   default="나만의 영상 제작 가이드", help="Book title")
    parser.add_argument("--topic",   default="유튜브 영상 기획부터 편집, 배포까지의 전 과정", help="Main topic")
    parser.add_argument("--author",  default="CINE_ENGINE", help="Author name")
    parser.add_argument("--model",   default=MODEL,
                        help="Gemini model (예: gemini-2.5-flash, gemini-2.5-pro)")
    parser.add_argument(
        "--chapters",
        nargs="+",
        default=[
            "기획의 힘: 아이디어를 콘텐츠로",
            "촬영 기술과 카메라 세팅",
            "편집 워크플로우",
            "배포 전략과 채널 성장",
        ],
        help="Chapter titles (space-separated, quote multi-word titles)",
    )
    args = parser.parse_args()

    generate_ebook(
        title=args.title,
        topic=args.topic,
        author=args.author,
        chapter_titles=args.chapters,
        model=args.model,
    )


if __name__ == "__main__":
    main()
