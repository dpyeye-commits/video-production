# AI 영상치유의 가능성과 영상치료 기제에 관한 고찰
## — 치료 기제별 구현 가능성과 설계 원리의 모색 —

### A Study on the Possibilities of AI Video Healing and the Mechanisms of Video Therapy: Exploring Mechanism-Specific Implementation and Design Principles

<br>

**저자명**<sup>1)</sup>

<sup>1)</sup> 소속 기관, 학과 (직위) · 교신저자 이메일: ____________

<br>

*투고일: 20XX. XX. XX. ｜ 수정일: 20XX. XX. XX. ｜ 게재확정일: 20XX. XX. XX.*

---

## 국문초록

본 연구는 영상치료(video therapy)의 치료 기제를 심층적으로 고찰하고, 생성형 인공지능(generative AI) 기반 '영상치유'가 각 기제를 어떻게 구현·강화할 수 있는지를 기제별로 분석하여 그 가능성과 실현 조건을 규명하는 것을 목적으로 한다. 영상치료는 동일시와 투사, 정서적 정화(catharsis), 보편성(universality), 관찰학습, 정서 조절, 그리고 치료적 대화의 매개라는 정교한 기제 위에서 발전해 왔으며, 그 효과는 국내외 연구를 통해 보고되어 왔다. 텍스트-투-비디오(text-to-video) 생성 모델의 발전으로 개인 맞춤형 영상을 즉시 생성하는 일이 가능해지면서, AI 영상치유는 이들 기제를 새로운 방식으로 구현할 잠재력을 지니게 되었다. 본 연구는 이론적 문헌고찰(theoretical literature review)을 통해, 영상치료의 여섯 가지 핵심 기제를 분석 렌즈로 삼아 AI 영상치유의 기제별 구현 가능성을 검토하고, 각 가능성이 치료적 효과로 실현되기 위한 조건을 도출하였다. 분석 결과, AI 영상치유는 맞춤성·즉시성·상호작용성을 통해 동일시·정화·관찰학습·정서 조절을 강화할 잠재력을 지니되, 그 가능성은 치료적 관계 안에서의 의미 처리, 임상적 통제, 윤리적 안전장치라는 조건이 충족될 때만 치료적 효과로 전환됨을 확인하였다. 이에 본 연구는 기제 기반 설계 원리와 치료자 매개형 통합 모델을 제안하며, 후속 실증연구의 방향을 제시한다.

**주제어**: AI 영상치유, 영상치료, 치료 기제, 동일시, 정서적 정화, 치료적 동맹

---

## Abstract

This study aims to examine in depth the therapeutic mechanisms of video therapy and to analyze, mechanism by mechanism, how generative artificial intelligence (AI)–based "video healing" can implement and strengthen each mechanism, thereby clarifying its possibilities and conditions for realization. Video therapy has developed upon sophisticated mechanisms—identification and projection, emotional catharsis, universality, observational learning, affect regulation, and the mediation of therapeutic dialogue—and its effects have been reported in domestic and international research. As text-to-video generative models advance, making the instant generation of personalized visual content possible, AI video healing has come to possess the potential to implement these mechanisms in novel ways. Through a theoretical literature review, this study uses the six core mechanisms of video therapy as an analytic lens to examine the mechanism-specific implementation possibilities of AI video healing, and derives the conditions under which each possibility can be realized as a therapeutic effect. The analysis confirms that AI video healing has the potential to strengthen identification, catharsis, observational learning, and affect regulation through personalization, immediacy, and interactivity; however, these possibilities are converted into therapeutic effects only when conditions of meaning processing within the therapeutic relationship, clinical control, and ethical safeguards are met. Accordingly, this study proposes mechanism-based design principles and a therapist-mediated integrative model, and suggests directions for future empirical research.

**Keywords**: AI video healing, video therapy, therapeutic mechanisms, identification, emotional catharsis, therapeutic alliance

---

## Ⅰ. 서론

### 1. 연구의 배경

영상은 인간의 정서에 직접적이고 강력하게 작용하는 매체이다. 한 편의 영화나 짧은 영상이 관객의 감정을 환기하고, 억압된 기억을 떠올리게 하며, 자기 자신을 새로운 시각에서 바라보게 만든다는 사실은 오랫동안 임상 현장에서 활용되어 왔다(Hesley & Hesley, 2001). 이러한 경험적 토대 위에서 발전한 영상치료(video therapy) 혹은 영화치료(cinema therapy)는, 단순히 영상을 보는 행위가 아니라 동일시·정화·통찰 등 일련의 심리적 기제를 통해 치료적 변화를 일으키는 접근으로 개념화되어 왔다(Sacilotto et al., 2022). 국내에서도 영화치료는 우울증 중년여성, 위기청소년 등 다양한 대상에게 적용되어 정서 개선 효과가 보고되어 왔다(강은주, 천성문, 2011; 신경아, 2018).

2020년대에 들어 생성형 인공지능은 텍스트 프롬프트만으로 고품질 영상을 즉시 생성하는 단계에 이르렀다(Sun et al., 2024; Liu et al., 2024). 이로써 개인의 정서 상태·기억·선호에 맞춘 영상을 실시간으로 제공하는 'AI 영상치유'가 새로운 가능성으로 부상하였으며, 국내 상담·심리치료 분야에서도 AI 활용 연구가 꾸준히 증가하고 있다(여수진, 손승희, 2025).

### 2. 문제 제기: 왜 '기제'의 관점인가

AI 영상치유에 대한 기존 논의는 주로 '기술이 무엇을 할 수 있는가'(맞춤 영상 생성, 즉시성 등)에 초점을 맞춰 왔다. 그러나 영상치료의 효과는 영상 그 자체가 아니라, 영상이 촉발하는 *치료 기제*—동일시, 정화, 보편성, 관찰학습, 대화의 매개—를 통해 발생한다(Sacilotto et al., 2022; Yalom & Leszcz, 2020). 따라서 AI 영상치유의 가능성을 제대로 평가하려면, '기술이 이들 치료 기제를 실제로 구현·강화할 수 있는가'를 기제별로 따져 보아야 한다. 기술적 성능과 치료적 기제의 구현은 별개의 문제이며, 후자에 대한 분석 없이 전자만으로 치유를 논하는 것은 치료의 본질을 기술의 산출물로 환원하는 오류에 빠질 수 있다. 본 연구는 이러한 문제의식에서, 영상치료의 치료 기제를 준거로 AI 영상치유의 가능성과 그 실현 조건을 규명하고자 한다.

### 3. 연구 목적 및 연구 문제

본 연구의 목적은 영상치료의 치료 기제를 심층 고찰하고, AI 영상치유가 각 기제를 어떻게 구현·강화할 수 있는지를 분석하여, 그 가능성과 실현 조건 및 설계 원리를 도출하는 데 있다. 이를 위해 다음의 연구 문제를 설정한다.

- **연구 문제 1.** 영상치료의 핵심 치료 기제와 그 이론적 근거는 무엇인가?
- **연구 문제 2.** AI 영상치유는 각 치료 기제를 어떻게 구현·강화할 수 있으며, 그 가능성은 무엇인가?
- **연구 문제 3.** 각 기제의 가능성이 치료적 효과로 실현되기 위한 조건과 설계 원리는 무엇인가?

### 4. 연구 방법 및 범위

본 연구는 이론적 문헌고찰을 방법으로 한다. 국외의 PubMed·PsycINFO·Google Scholar와 국내의 KCI·RISS를 대상으로 '영상치료/video therapy', '영화치료/cinema therapy', '치료 기제/therapeutic mechanism', '치료적 동맹/therapeutic alliance', '생성형 AI/generative AI', '텍스트-투-비디오/text-to-video' 등을 조합하여 검색하였다. 선정 기준은 (1) 영상·영화치료의 이론·기제·효과를 다룬 문헌, (2) 심리치료 공통요인·치료 기제에 관한 문헌, (3) 생성형 AI·디지털 정신건강 개입을 다룬 문헌으로 하였으며, 이론적 정박을 위해 고전·1차 문헌을 우선 포함하였다. 본 연구는 실증적 효과 검증이 아니라 *기제 기반 가능성 고찰*에 초점을 두며, 결론은 후속 실증연구와 설계 원리의 성격을 갖는다.

---

## Ⅱ. 영상치료의 치료 기제

본 장은 영상치료의 효과를 설명하는 여섯 가지 핵심 기제를 이론에 정박하여 고찰한다. 이는 다음 장에서 AI 영상치유의 가능성을 분석하는 준거가 된다.

### 1. 동일시와 투사(identification & projection)

영상치료의 가장 기본적인 기제이다. 내담자는 영상 속 인물·상황에 자신을 투영하여, 직접 말하기 어려운 감정과 갈등을 안전한 심리적 거리에서 다룬다. Hesley와 Hesley(2001)는 치료자가 내담자의 호소 문제와 관련된 영화를 선별하고 시청 후 대화를 통해 인물의 갈등과 내담자의 경험을 연결하는 '비디오워크(videowork)' 기법을 체계화하였다. 국내 연구에서도 위기청소년 대상 집단영화치료가 동일시를 통해 정서조절력을 향상시키고 문제행동을 감소시킨 것으로 보고되었다(강은주, 천성문, 2011).

### 2. 정서적 정화(catharsis)

영상이 환기한 감정을 표출·경험함으로써 긴장이 해소되고 정서가 정리된다. 정화는 집단·개인 심리치료의 핵심 치료 요인으로 오랫동안 논의되어 왔다(Yalom & Leszcz, 2020). 정화는 그 자체로 해소감을 줄 뿐 아니라, 정서처리이론이 시사하듯 정서 구조의 활성화를 통해 이후의 인지적 재구성과 통찰을 위한 토대를 제공한다(Foa & Kozak, 1986). 다만 정화는 안전한 환경에서 적절한 강도로 일어날 때 치료적이며, 과도하거나 통제되지 않은 정서 환기는 오히려 압도로 이어질 수 있다.

### 3. 보편성(universality)

비슷한 고통을 겪는 인물을 보며 '나만 그런 것이 아니다'를 경험하는 것은 고립감을 완화하는 강력한 치료 요인이다(Yalom & Leszcz, 2020). 영상의 서사는 인물의 내면과 관계를 생생하게 제시함으로써 이러한 보편성 경험을 효과적으로 매개한다.

### 4. 관찰학습(observational learning)

영상 속 인물의 적응적 대처를 관찰함으로써 새로운 행동을 학습한다. 이는 Bandura(1977)의 사회학습이론에 이론적 기반을 두며, 특정 기술이나 대처 방식을 시연하는 비디오 모델링의 핵심 원리이다. 관찰학습이 실제 행동 변화로 이어지려면 주의·기억·재현·동기라는 과정이 뒷받침되어야 한다.

### 5. 정서 조절과 안정화(affect regulation)

안정적·심미적 영상 자극은 자율신경계를 안정시켜 스트레스와 불안을 완화한다. 실제로 영화치료 프로그램은 우울증 중년여성의 우울 감소와 정서표현성 향상에 효과가 있는 것으로 나타났다(신경아, 2018). 자연·명상 영상을 활용한 이완·심상유도는 이 기제를 직접 겨냥한다.

### 6. 치료적 대화의 매개(therapeutic mediation)

영상은 그 자체로 치유하는 것이 아니라, 시청 후 치료자와 나누는 대화·해석의 촉매로 기능한다. Sacilotto 등(2022)은 영상의 공유 시청이 치료자와 내담자 사이에 '공통의 언어(common vocabulary)'를 형성하여 치료적 관계를 강화한다고 보았다. 심리치료 성과를 설명하는 공통요인 연구는 기법보다 치료적 관계가 성과를 더 잘 예측함을 일관되게 보고해 왔으며(Cuijpers et al., 2019), Bordin(1979)은 이 관계를 목표·과제·유대로 구성된 작업동맹으로 개념화하였다. 다수 연구의 메타분석 역시 동맹이 강건한 성과 예측 변인임을 확인한다(Flückiger et al., 2018). 따라서 위의 다섯 기제는 모두 이 여섯 번째 기제, 즉 관계적 의미 처리 속에서 비로소 치료적 변화로 통합된다.

---

## Ⅲ. AI 영상치유의 기술적 토대와 맥락

### 1. 기술적 토대

AI 영상치유의 기술적 기반은 디퓨전 트랜스포머(diffusion transformer) 계열의 텍스트-투-비디오 모델로, 자연어 프롬프트로부터 고해상도 영상을 생성한다(Sun et al., 2024; Liu et al., 2024). 여기에 사용자의 정서 상태·선호·이력을 반영하는 개인화 알고리즘과, 언어적 입력을 해석해 영상·음성·텍스트를 제공하는 대화형 멀티모달 상호작용이 결합된다. 이러한 기술적 특성—맞춤성, 즉시성, 상호작용성—은 영상치료 기제의 구현 방식을 변화시킬 잠재력을 지닌다. 다만 생성 결과는 학습 데이터의 통계적 패턴에 기반하므로 의도와 다른 산출과 통제의 불완전성, 편향을 내포한다는 본질적 한계도 함께 지닌다(Sun et al., 2024).

### 2. 디지털 정신건강 맥락

AI 영상치유는 디지털 정신건강 흐름의 일부이다. 176편의 무작위통제연구(RCT)를 종합한 메타분석은 정신건강 앱이 우울·불안 증상 완화에 유의한 효과가 있음을 보고하였고(Linardon et al., 2024), 92편의 RCT 분석도 디지털 개입의 임상적 효과를 확인하였으며(Valentine et al., 2025), 생성형 AI 챗봇을 다룬 메타분석은 일정한 효과 가능성을 시사한다(Zhang et al., 2025). 다만 생성형 AI 기반 도구의 임상적 검증은 아직 초기 단계에 머물러 있다(Wang et al., 2025).

---

## Ⅳ. 기제별 구현 가능성 분석

본 장은 Ⅱ장의 여섯 기제를 준거로, AI 영상치유가 각 기제를 어떻게 구현·강화할 수 있는지(가능성)와 그 실현에 필요한 조건을 분석한다. 종합하면 〈표 1〉과 같다.

### 1. 동일시·투사의 강화

AI 영상치유의 맞춤성은 동일시 기제를 강화할 잠재력이 가장 큰 지점이다. 기성 영화에서 적합한 인물을 찾던 방식과 달리, 내담자의 상황·정서를 반영한 맞춤 심상을 생성함으로써 더 정확한 투사와 동일시를 유도할 수 있다(Sacilotto et al., 2022). **실현 조건**: 그러나 투사된 내용을 임상적으로 해석하고 통찰로 연결하는 과정이 동반되지 않으면, 동일시는 정서적 자극에 그친다.

### 2. 정서적 정화의 촉진

즉시성과 반복성은 정화 기제에 유리하다. 정서적 환기가 필요한 순간에 즉시 맞춤 영상을 제공하고 반복할 수 있어, 정화의 접근성을 높인다(Foa & Kozak, 1986). **실현 조건**: 다만 정화는 적절한 강도에서 치료적이며, 통제되지 않은 정서 환기는 압도로 이어질 수 있으므로, 강도 조절과 정화 이후의 담아내기가 필수적이다.

### 3. 보편성 경험의 매개

AI는 사용자의 경험과 공명하는 맞춤 서사를 생성하여 '나만 그런 것이 아니다'라는 보편성 경험을 정교하게 매개할 수 있다(Yalom & Leszcz, 2020). **실현 조건**: 다만 보편성의 치료적 힘은 실재하는 타인·집단과의 연결감에서 비롯되는 측면이 크므로, AI 생성 서사가 진정한 인간적 연결을 어느 정도 대체할 수 있는지는 검증이 필요하다.

### 4. 관찰학습의 개인화

AI는 특정 내담자에게 필요한 적응적 대처를 시연하는 맞춤 모델링 영상을 생성할 수 있어, 비디오 모델링의 개인화 수준을 높인다(Bandura, 1977). **실현 조건**: 관찰이 실제 행동 변화로 이어지려면 동기 부여와 강화, 실생활 전이를 지원하는 설계가 필요하다.

### 5. 정서 조절·안정화의 즉시 지원

맞춤 이완·심상 영상을 즉시·반복 제공함으로써 정서 조절과 안정화를 자기조력(self-help) 형태로 지원할 수 있다(신경아, 2018). 이 기제는 AI 영상치유가 비교적 안전하게 강화할 수 있는 영역이다. **실현 조건**: 다만 안정화가 필요한 상태인지에 대한 판단과, 위기 신호 시의 전문 연계가 전제되어야 한다.

### 6. 대화 매개의 보조: 가능성의 임계

여섯 번째 기제인 관계적 의미 처리는 AI가 가장 충족하기 어려운 지점이자, 다른 모든 가능성의 실현을 좌우하는 임계 조건이다. AI는 콘텐츠 생성을 보조할 수 있어도, 영상의 의미를 내담자와 함께 처리하는 관계적 과정을 대체하지 못한다(Bordin, 1979; Cuijpers et al., 2019). 국내 상담사들도 챗봇의 기능적 유용성은 인정하면서 관계적 깊이의 한계를 지적한 바 있다(장규현, 서영석, 2022). 즉, 앞의 다섯 기제에서의 가능성은 모두 이 여섯 번째 기제가 인간 치료자에 의해 보완될 때 비로소 치료적 효과로 전환된다.

**〈표 1〉 영상치료 기제별 AI 영상치유의 구현 가능성과 실현 조건**

| 치료 기제 | AI의 구현 가능성 | 실현 조건 |
|----------|----------------|----------|
| 동일시·투사 | 맞춤 심상으로 투사 정밀화 | 투사 내용의 임상적 해석 |
| 정서적 정화 | 즉시·반복 정서 환기 | 강도 조절·정화 후 담아내기 |
| 보편성 | 공명하는 맞춤 서사 제공 | 실재적 인간 연결의 보완 |
| 관찰학습 | 맞춤 모델링 영상 생성 | 동기·강화·실생활 전이 설계 |
| 정서 조절·안정화 | 즉시·반복 이완 지원 | 상태 판단·위기 연계 |
| 대화의 매개 | 콘텐츠 생성 보조 | 치료자의 관계적 의미 처리 |

---

## Ⅴ. 기제 구현을 위한 설계 원리

기제별 분석은 AI 영상치유의 가능성이 일정한 조건 아래에서만 치료적 효과로 실현됨을 보여준다. 이를 토대로 다음 설계 원리를 제안한다.

1. **기제 정합적 설계(mechanism-aligned design)**: 단지 '좋은 영상'이 아니라 특정 치료 기제(예: 동일시, 안정화)를 명시적으로 겨냥하여 콘텐츠를 설계하고, 그 기제의 작동 조건(예: 정화의 강도 조절)을 시스템에 반영한다.
2. **치료자 매개(therapist-mediated) 통합**: 다섯 기제의 가능성을 실현하는 임계 조건인 관계적 의미 처리는 훈련된 임상가가 책임진다. AI는 콘텐츠 생성 도구, 인간은 의미 처리의 주체로 역할을 분담한다.
3. **단계적·안전 지향 운영**: 정서 조절·안정화처럼 비교적 안전한 기제를 1차 자기조력 층위에 두고, 강한 정서 환기가 필요한 작업은 임상적 통제 아래 수행하며, 위기 신호 시 전문 연계 절차를 둔다(Parks et al., 2025).
4. **윤리·안전 거버넌스 내장**: 데이터 보호, 편향 점검, 책임 구조를 시스템에 내장한다(World Health Organization, 2021; American Psychological Association, 2025).

---

## Ⅵ. 논의

### 1. 이론적 함의

본 연구는 영상치료의 효과를 설명하는 치료 기제를, 신생 기술의 가능성을 평가하는 분석 렌즈로 재구성하였다. 이는 '기술이 무엇을 할 수 있는가'가 아니라 '치료 기제가 무엇을 요구하는가'에서 출발하는 관점으로, AI 영상치유의 가능성을 막연한 기대가 아니라 기제 단위의 구체적 분석으로 전환한다. 특히 다섯 기제의 가능성이 여섯 번째 기제(관계적 의미 처리)에 의해 조건 지어진다는 분석은, 가능성과 한계를 분리된 목록이 아니라 하나의 구조로 통합하여 이해하게 한다.

### 2. 임상적 함의

임상적으로 AI 영상치유는 치료자를 대체하는 자율적 치료가 아니라, 특정 치료 기제를 겨냥한 콘텐츠 생성을 임상가의 통제 아래 보조하는 도구로 위치 지어져야 한다. 임상가는 어떤 기제를, 어떤 강도로, 언제 활용할지를 결정하는 게이트키퍼이자 의미 처리의 주체로 기능한다.

### 3. 정책적 함의

정책적으로는 효과성·안전성 검증, 데이터 보호, '치료'를 표방하는 검증되지 않은 서비스에 대한 규율이 요구된다. 기제 기반 설계 원리는 이러한 규율의 구체적 평가 기준을 제공할 수 있다.

---

## Ⅶ. 결론 및 제언

본 연구는 영상치료의 여섯 가지 치료 기제를 심층 고찰하고, AI 영상치유가 각 기제를 어떻게 구현·강화할 수 있는지를 기제별로 분석하였다. 분석 결과, AI 영상치유는 맞춤성·즉시성·상호작용성을 통해 동일시·정화·관찰학습·정서 조절을 강화할 잠재력을 지니되, 그 가능성은 관계적 의미 처리, 임상적 통제, 윤리적 안전장치라는 조건이 충족될 때만 치료적 효과로 전환된다. 따라서 AI 영상치유는 치료 기제를 명시적으로 겨냥하는 기제 정합적 설계와, 인간 치료자가 의미 처리를 담당하는 치료자 매개형 통합 모델 안에서 그 가능성을 가장 책임 있게 실현할 수 있다.

본 연구는 이론적 고찰에 머문다는 점, 빠르게 변화하는 기술의 특정 시점을 다룬다는 점에서 한계를 지닌다. 후속 연구를 위한 제언은 다음과 같다. 첫째, 기제별로 AI 영상치유의 효과를 검증하는 실증연구(예: 동일시·정화·안정화를 종속변인으로 한 통제 연구)가 필요하다. 둘째, 기제 정합적 설계의 구체적 구현과 그 안전성·수용성을 검증하는 연구가 요구된다. 셋째, 치료자-AI 협업 프로토콜을 개발하고 그 임상적 효과를 검증하는 연구가 필요하다.

본 연구는 AI 영상치유의 가능성을 검증된 영상치료 기제의 관점에서 구조적으로 분석할 이론적 토대와 설계 원리를 제공했다는 데 의의가 있다.

---

## 참고문헌 (References)

> *APA 7판 형식. 국내 문헌은 가나다순, 국외 문헌은 알파벳순으로 정렬하였다. 실제 제출 시 둘째 줄 들여쓰기(hanging indent)를 적용할 것.*

### 국내 문헌

강은주, 천성문 (2011). 집단영화치료프로그램이 위기청소년의 정서조절력과 문제행동에 미치는 효과 연구. *청소년상담연구, 19*(2), 23–46. https://doi.org/10.35151/kyci.2011.19.2.002

신경아 (2018). 우울증 중년여성을 위한 영화치료 프로그램의 효과. *디지털융복합연구, 16*(10), 511–522. https://doi.org/10.14400/JDC.2018.16.10.511

여수진, 손승희 (2025). AI 기반 심리상담 연구의 국내 동향 분석: 주제범위 문헌고찰을 중심으로. *상담심리교육복지, 12*(5), 11–27. https://doi.org/10.20496/cpew.2025.12.5.11

장규현, 서영석 (2022). 심리상담 챗봇에 대한 상담사들의 인식. *상담학연구, 23*(6), 17–48. https://doi.org/10.15703/kjc.23.6.202212.17

### 국외 문헌

American Psychological Association. (2025). *Balancing promise and risk: Ethical considerations for GenAI in mental health care.* APA Services. https://www.apaservices.org/practice/ce/expert/ethical-genai-mental-health-care

Bandura, A. (1977). *Social learning theory.* Prentice-Hall.

Bordin, E. S. (1979). The generalizability of the psychoanalytic concept of the working alliance. *Psychotherapy: Theory, Research & Practice, 16*(3), 252–260. https://doi.org/10.1037/h0085885

Cuijpers, P., Reijnders, M., & Huibers, M. J. H. (2019). The role of common factors in psychotherapy outcomes. *Annual Review of Clinical Psychology, 15*, 207–231. https://doi.org/10.1146/annurev-clinpsy-050718-095424

Flückiger, C., Del Re, A. C., Wampold, B. E., & Horvath, A. O. (2018). The alliance in adult psychotherapy: A meta-analytic synthesis. *Psychotherapy, 55*(4), 316–340. https://doi.org/10.1037/pst0000172

Foa, E. B., & Kozak, M. J. (1986). Emotional processing of fear: Exposure to corrective information. *Psychological Bulletin, 99*(1), 20–35. https://doi.org/10.1037/0033-2909.99.1.20

Hesley, J. W., & Hesley, J. G. (2001). *Rent two films and let's talk in the morning: Using popular movies in psychotherapy* (2nd ed.). Wiley.

Linardon, J., Cuijpers, P., Carlbring, P., Messer, M., & Fuller-Tyszkiewicz, M. (2024). Current evidence on the efficacy of mental health smartphone apps for symptoms of depression and anxiety: A meta-analysis of 176 randomized controlled trials. *World Psychiatry.* https://pmc.ncbi.nlm.nih.gov/articles/PMC10785982/

Liu, Y., Zhang, K., Li, Y., Yan, Z., Gao, C., Chen, R., Yuan, Z., Huang, Y., Sun, H., Gao, J., He, L., & Sun, L. (2024). *Sora: A review on background, technology, limitations, and opportunities of large vision models* [Preprint]. arXiv. https://doi.org/10.48550/arXiv.2402.17177

Parks, A., Travers, E., Perera-Delcourt, R., Major, M., Economides, M., & Mullan, P. (2025). Is this chatbot safe and evidence-based? A call for the critical evaluation of generative AI mental health chatbots. *Journal of Participatory Medicine, 17*(1), e69534. https://doi.org/10.2196/69534

Sacilotto, E., Salvato, G., Villa, F., Salvi, F., & Bottini, G. (2022). Through the looking glass: A scoping review of cinema and video therapy. *Frontiers in Psychology, 12*, Article 732246. https://doi.org/10.3389/fpsyg.2021.732246

Sun, R., Zhang, Y., Shah, T., Sun, J., Zhang, S., Li, W., Duan, H., Wei, B., & Ranjan, R. (2024). *From Sora what we can see: A survey of text-to-video generation* [Preprint]. arXiv. https://doi.org/10.48550/arXiv.2405.10674

Valentine, L., Hinton, J. D. X., Bajaj, K., Boyd, L., O'Sullivan, S., Sorenson, R. P., Bell, I. H., Sobredo Vega, M., Liu, P., Peters, W., Mangelsdorf, S. N., Wren, T. W., Moller, C., Cross, S., McEnery, C., Bendall, S., Nicholas, J., & Alvarez-Jimenez, M. (2025). A meta-analysis of persuasive design, engagement, and efficacy in 92 RCTs of mental health apps. *npj Digital Medicine, 8*, Article 229. https://doi.org/10.1038/s41746-025-01567-5

Wang, X., Zhou, Y., & Zhou, G. (2025). The application and ethical implication of generative AI in mental health: Systematic review. *JMIR Mental Health, 12*, e70610. https://doi.org/10.2196/70610

World Health Organization. (2021). *Ethics and governance of artificial intelligence for health: WHO guidance.* World Health Organization. https://www.who.int/publications/i/item/9789240029200

Yalom, I. D., & Leszcz, M. (2020). *The theory and practice of group psychotherapy* (6th ed.). Basic Books.

Zhang, Q., Zhang, R., Xiong, Y., Sui, Y., Tong, C., & Lin, F.-H. (2025). Generative AI mental health chatbots as therapeutic tools: Systematic review and meta-analysis of their role in reducing mental health issues. *Journal of Medical Internet Research, 27*, e78238. https://doi.org/10.2196/78238
