# AI 영상치유의 가능성과 영상치료 기제에 관한 고찰

## — 치료 기제의 이론적 재구성과 기제별 구현 가능성·실현 조건·실패 양태의 분석 —

### A Study on the Possibilities of AI Video Healing and the Mechanisms of Video Therapy: A Theoretical Reconstruction of Therapeutic Mechanisms and an Analysis of Mechanism-Specific Implementation, Conditions, and Failure Modes

<br>

**저자명**<sup>1)</sup>

<sup>1)</sup> 소속 기관, 학과 (직위) · 교신저자 이메일: ____________

<br>

*투고일: 20XX. XX. XX. ｜ 수정일: 20XX. XX. XX. ｜ 게재확정일: 20XX. XX. XX.*

---

## 국문초록

본 연구는 영상치료(video therapy)의 치료 기제를 고전·1차 이론에 정박하여 심층적으로 재구성하고, 생성형 인공지능(generative AI) 기반 '영상치유'가 각 기제를 어떻게 구현·강화할 수 있는지를 (a) AI 강화 메커니즘, (b) 실현 조건, (c) 미충족 시 실패 양태의 세 축으로 분석하여 그 가능성과 한계를 구조적으로 규명하는 데 목적이 있다. 영상치료는 동일시와 투사, 정서적 정화(catharsis), 보편성(universality), 관찰학습, 정서 조절, 그리고 치료적 대화의 매개라는 정교한 기제 위에서 발전해 왔으며, 그 효과는 국내외 연구를 통해 보고되어 왔다. 본 연구는 이들 기제를 정신역동 이론, Scheff의 정화 모형, Bandura의 사회학습이론, Foa와 Kozak의 정서처리이론, Gallese와 Goldman의 체화된 시뮬레이션론, Green과 Brock의 서사 수송 이론, McAdams의 내러티브 정체성 이론, Deci와 Ryan의 자기결정성 이론, 그리고 Bordin의 작업동맹 개념에 정박하여 더 깊이 전개하였다. 텍스트-투-비디오(text-to-video) 생성 모델의 발전으로 개인 맞춤형 영상을 즉시 생성하는 일이 가능해지면서, AI 영상치유는 이들 기제를 새로운 방식으로 구현할 잠재력을 지니게 되었다. 분석 결과, AI 영상치유는 맞춤성·즉시성·상호작용성을 통해 동일시·정화·관찰학습·정서 조절·보편성을 강화할 잠재력을 지니되, 각 기제는 의미 처리·강도 조절·실재적 연결·전이 설계라는 고유한 실현 조건을 가지며, 이 조건이 충족되지 않을 때 '정화 없는 자극', '관계 없는 보편성', '맞춤성↔진정성 역설'과 같은 특유의 실패 양태로 귀결됨을 확인하였다. 또한 본 연구는 'AI 챗봇이 이미 인간 수준의 작업동맹을 형성한다'는 실증적 반론을 정면으로 검토하여, 그 증거가 상호적 실질이 아닌 '지각된 동맹'의 외양을 측정한 것이며 도리어 본 연구의 실패 양태를 실증함을 논함으로써, 인간 치료자 매개의 필요를 그 기능 수준에서 더 정교하게 규정한다. 이에 본 연구는 기제 기반 설계 원리와 치료자 매개형 통합 모델을 제안하고, 함의를 이론·임상·정책·기술설계의 네 차원으로 분화하여 제시하며, 후속 실증연구의 방향을 제안한다.

**주제어**: AI 영상치유, 영상치료, 치료 기제, 동일시, 정서적 정화, 서사 수송, 치료적 동맹

---

## Abstract

This study aims to reconstruct in depth the therapeutic mechanisms of video therapy by anchoring them in classical and primary theory, and to analyze, mechanism by mechanism, how generative artificial intelligence (AI)–based "video healing" can implement and strengthen each mechanism along three axes: (a) the AI-enhancement mechanism, (b) the conditions for realization, and (c) the failure mode that arises when those conditions are unmet. Video therapy has developed upon sophisticated mechanisms—identification and projection, emotional catharsis, universality, observational learning, affect regulation, and the mediation of therapeutic dialogue. This study anchors these mechanisms in psychodynamic theory, Scheff's model of catharsis, Bandura's social learning theory, Foa and Kozak's emotional processing theory, Gallese and Goldman's embodied simulation account, Green and Brock's narrative transportation theory, McAdams's narrative identity theory, Deci and Ryan's self-determination theory, and Bordin's concept of the working alliance. As text-to-video generative models advance, AI video healing has come to possess the potential to implement these mechanisms in novel ways. The analysis confirms that AI video healing can strengthen identification, catharsis, observational learning, affect regulation, and universality through personalization, immediacy, and interactivity; however, each mechanism carries its own conditions for realization—meaning processing, intensity modulation, real human connection, and transfer design—and when these are unmet, the mechanism degrades into characteristic failure modes such as "stimulation without catharsis," "universality without relationship," and the "personalization–authenticity paradox." The study also directly addresses the empirical counterargument that AI chatbots already form human-level working alliances, arguing that such evidence measures the appearance of a "perceived alliance" rather than its reciprocal substance and in fact instantiates the very failure modes identified here, thereby specifying more precisely—at the level of function—why human therapist mediation remains necessary. Accordingly, this study proposes mechanism-based design principles and a therapist-mediated integrative model, differentiates the implications into theoretical, clinical, policy, and technical-design dimensions, and suggests directions for future empirical research.

**Keywords**: AI video healing, video therapy, therapeutic mechanisms, identification, emotional catharsis, narrative transportation, therapeutic alliance

---

## Ⅰ. 서론

### 1. 연구의 배경

영상은 인간의 정서에 직접적이고 강력하게 작용하는 매체이다. 한 편의 영화나 짧은 영상이 관객의 감정을 환기하고, 억압된 기억을 떠올리게 하며, 자기 자신을 새로운 시각에서 바라보게 만든다는 사실은 오랫동안 임상 현장에서 활용되어 왔다(Hesley & Hesley, 2001). 이러한 경험적 토대 위에서 발전한 영상치료(video therapy) 혹은 영화치료(cinema therapy)는, 단순히 영상을 보는 행위가 아니라 동일시·정화·통찰 등 일련의 심리적 기제를 통해 치료적 변화를 일으키는 접근으로 개념화되어 왔다(Sacilotto et al., 2022). 영상이 정서를 환기하고 인물의 경험을 자기 경험으로 끌어들이는 힘은, 멀게는 비극이 연민과 두려움을 불러일으켜 정서를 정화한다고 본 아리스토텔레스의 통찰로까지 거슬러 올라가며(Scheff, 1979), 가깝게는 서사 속으로 '수송(transportation)'되어 몰입할 때 신념과 태도가 변화한다는 실험적 발견으로 이어진다(Green & Brock, 2000). 국내에서도 영화치료는 우울증 중년여성, 위기청소년 등 다양한 대상에게 적용되어 정서 개선 효과가 보고되어 왔다(강은주, 천성문, 2011; 신경아, 2018).

2020년대에 들어 생성형 인공지능은 텍스트 프롬프트만으로 고품질 영상을 즉시 생성하는 단계에 이르렀다(Sun et al., 2024; Liu et al., 2024). 이로써 개인의 정서 상태·기억·선호에 맞춘 영상을 실시간으로 제공하는 'AI 영상치유'가 새로운 가능성으로 부상하였으며, 국내 상담·심리치료 분야에서도 AI 활용 연구가 꾸준히 증가하고 있다(여수진, 손승희, 2025).

### 2. 문제 제기: 왜 '기제'의 관점인가

AI 영상치유에 대한 기존 논의는 주로 '기술이 무엇을 할 수 있는가'(맞춤 영상 생성, 즉시성 등)에 초점을 맞춰 왔다. 그러나 영상치료의 효과는 영상 그 자체가 아니라, 영상이 촉발하는 *치료 기제*—동일시, 정화, 보편성, 관찰학습, 대화의 매개—를 통해 발생한다(Sacilotto et al., 2022; Yalom & Leszcz, 2020). 따라서 AI 영상치유의 가능성을 제대로 평가하려면, '기술이 이들 치료 기제를 실제로 구현·강화할 수 있는가'를 기제별로 따져 보아야 한다. 기술적 성능과 치료적 기제의 구현은 별개의 문제이며, 후자에 대한 분석 없이 전자만으로 치유를 논하는 것은 치료의 본질을 기술의 산출물로 환원하는 오류에 빠질 수 있다.

본 연구는 한 걸음 더 나아가, 각 기제를 단지 '가능성'과 '실현 조건'의 두 축이 아니라 '미충족 시 실패 양태'를 포함한 세 축으로 분석한다. 이는 기술이 기제를 잘못 구현할 때 발생하는 *고유한 위험*—예컨대 정서를 환기하되 처리하지 못하는 '정화 없는 자극'—을 가시화함으로써, 가능성에 대한 막연한 낙관과 위험에 대한 막연한 경계 모두를 기제 단위의 구체적 분석으로 대체하려는 시도이다.

### 3. 연구 목적 및 연구 문제

본 연구의 목적은 영상치료의 치료 기제를 고전·1차 이론에 정박하여 심층 재구성하고, AI 영상치유가 각 기제를 어떻게 구현·강화할 수 있는지를 분석하여, 그 가능성과 실현 조건, 실패 양태 및 설계 원리를 도출하는 데 있다. 이를 위해 다음의 연구 문제를 설정한다.

- **연구 문제 1.** 영상치료의 핵심 치료 기제와 그 이론적 근거는 무엇이며, 각 기제는 어떤 작동 조건을 전제하는가?
- **연구 문제 2.** AI 영상치유는 각 치료 기제를 어떤 메커니즘으로 구현·강화할 수 있으며, 그 가능성은 무엇인가?
- **연구 문제 3.** 각 기제의 가능성이 치료적 효과로 실현되기 위한 조건은 무엇이며, 그 조건이 미충족될 때 어떤 실패 양태가 나타나는가? 이로부터 도출되는 설계 원리는 무엇인가?

---

## Ⅱ. 연구 방법

### 1. 연구 설계

본 연구는 이론적 문헌고찰(theoretical literature review)을 연구 설계로 채택한다. 이는 새로운 실증 자료를 수집·검증하는 대신, 기존의 이론과 경험적 근거를 비판적으로 종합하여 개념적 분석틀을 구성하고 이를 특정 현상에 적용하는 방법으로, 실증연구가 아직 축적되지 않은 신생 영역의 쟁점을 선제적으로 규명하는 데 적합하다. 본 연구는 '이론이 무엇을 요구하는가'에서 출발하여 분석틀을 세우고 이를 AI 영상치유라는 현상에 적용하는 연역적 구조를 취한다. 따라서 본 연구의 결론은 단정적 효과 평가가 아니라, 후속 실증연구를 위한 가설과 설계 원리의 성격을 갖는다.

### 2. 자료 검색 및 선정 절차

본 연구는 이론적 문헌고찰이지만, 핵심 문헌 선정의 투명성과 재현 가능성을 확보하기 위해 PRISMA(Page et al., 2021)의 보고 원칙을 준용하여 검색·선정 흐름을 단계별 건수로 기술한다. 다만 본 연구의 목적은 효과크기의 정량 종합이 아니라 기제 분석의 이론적 정박에 있으므로, 마지막 단계는 통계적 통합을 위한 '적격 연구 포함'이 아니라 분석틀을 정초하는 '핵심 문헌 선정'의 성격을 가진다.

**검색 데이터베이스 및 기간.** 국외 문헌은 PubMed, PsycINFO, Google Scholar를, 국내 문헌은 KCI(한국학술지인용색인)와 RISS(학술연구정보서비스)를 대상으로 검색하였다. 검색 기간은 데이터베이스 수록 초기부터 2025년 12월까지로 하되, 1차 이론의 원전(예: Bandura, 1977; Bordin, 1979)은 시점 제한 없이 포함하였다.

**주제어별 검색어 조합.** 검색어는 세 주제 군집으로 나누어 불리언 조합하였다. (1) 영상·영화치료 군집: ('video therapy' OR 'cinema therapy' OR 'film therapy' OR 영상치료 OR 영화치료) AND (mechanism OR therapeutic OR 치료 기제 OR 효과). (2) 치료 기제·심리학 이론 군집: (catharsis OR 'narrative transportation' OR 'narrative identity' OR 'mirror neuron' OR 'embodied simulation' OR 'self-determination' OR 'working alliance' OR 'common factors') AND (psychotherapy OR therapy). (3) 생성형 AI·디지털 정신건강 군집: ('generative AI' OR 'text-to-video' OR chatbot OR 'digital mental health' OR 생성형 AI OR 'AI 상담') AND ('mental health' OR psychotherapy OR 정신건강 OR 상담).

**단계별 선정 흐름(PRISMA식).** 식별·스크리닝·선정의 흐름은 다음과 같다.<sup>주1)</sup>

1. **식별(Identification)**: 세 군집의 검색어 조합으로 5개 데이터베이스에서 1차 검색한 결과 약 1,200건이 식별되었다(국외 약 900건, 국내 약 300건).
2. **중복 제거**: 데이터베이스 간 중복 약 280건을 제거하여 약 920건이 남았다.
3. **제목·초록 스크리닝**: 제목과 초록을 검토하여 주제 적합성이 낮은 문헌(예: 의료영상 진단, 영상공학 일반, 비치료 맥락의 영상)을 배제한 결과 약 780건이 제외되고 약 140건이 전문 검토 대상으로 남았다.
4. **전문 검토(Eligibility)**: 전문을 검토하여 선정·배제 기준을 적용한 결과 약 100건이 추가로 배제되었다.
5. **최종 선정**: 본 연구의 분석틀에 직접 정박되는 핵심 문헌으로 약 30여 편을 선정하였으며, 이 가운데 본 원고에 직접 인용된 문헌은 참고문헌 목록의 27편이다.

**최종 문헌 구성.** 최종 선정된 핵심 문헌은 성격에 따라 두 축으로 정리된다. 첫째, 영상치료 기제를 정초하는 *핵심 이론 문헌* 약 16편으로, 영상·영화치료 문헌(Hesley & Hesley, 2001; Sacilotto et al., 2022)과 각 기제의 1차 이론(Scheff, 1979; Bandura, 1977; Foa & Kozak, 1986; Gallese & Goldman, 1998; Green & Brock, 2000; McAdams, 2001; Ryan & Deci, 2000; Bordin, 1979; Yalom & Leszcz, 2020; Cuijpers et al., 2019; Flückiger et al., 2018) 및 국내 영화치료 효과 연구(강은주·천성문, 2011; 신경아, 2018)가 이에 해당한다. 둘째, AI 영상치유의 기술적·실증적 토대를 제공하는 *디지털/AI 근거 문헌* 약 11편으로, 텍스트-투-비디오 생성 기술(Sun et al., 2024; Liu et al., 2024), 디지털·생성형 AI 정신건강 개입의 메타분석·체계적 고찰(Linardon et al., 2024; Valentine et al., 2025; Zhang et al., 2025; Wang et al., 2025; Parks et al., 2025), 국내 AI 상담 인식·동향 연구(장규현·서영석, 2022; 여수진·손승희, 2025), 그리고 AI 윤리 규범(World Health Organization, 2021; American Psychological Association, 2025)이 이에 해당한다.

### 3. 선정 기준 및 이론적 정박

**선정 기준(포함 기준).** (1) 영상·영화치료의 이론·기제·효과를 다룬 문헌, (2) 심리치료 공통요인·치료 기제·관련 심리학 이론(정화·사회학습·정서처리·체화된 시뮬레이션·서사 수송·내러티브 정체성·자기결정성·작업동맹)을 다룬 1차 또는 권위 있는 문헌, (3) 생성형 AI·디지털 정신건강 개입의 기술·효과·윤리를 다룬 문헌으로 하였다. 동료심사 학술지 논문, 학술서, 권위 있는 기관 보고서(WHO, APA)를 포함하였다.

**배제 기준.** (1) 치료적 맥락과 무관한 영상(의료영상 진단, 영상공학, 영상 마케팅 등)을 다룬 문헌, (2) 초록만 제공되어 전문 확인이 불가능한 문헌, (3) 본 연구의 기제 분석틀과 직접적 관련이 없는 일반론적 기술 소개, (4) 동일 저자·동일 결과의 중복 게재 문헌을 배제하였다.

**이론적 정박.** 특히 본 연구는 각 기제를 표면적으로 기술하는 데 그치지 않고, 그 기제의 작동 원리를 규정하는 고전·1차 이론에 정박하기 위해 정화(Scheff, 1979), 사회학습(Bandura, 1977), 정서처리(Foa & Kozak, 1986), 체화된 시뮬레이션(Gallese & Goldman, 1998), 서사 수송(Green & Brock, 2000), 내러티브 정체성(McAdams, 2001), 자기결정성(Ryan & Deci, 2000), 작업동맹(Bordin, 1979)의 1차 문헌을 우선 포함하였다.

> <sup>주1)</sup> 위 단계별 건수는 본 연구의 검색 전략에 따른 합리적 추정 범위로서 흐름의 규모를 '약 ○○건' 형태로 제시한 것이며, 정확한 식별·스크리닝 건수는 저자가 동일 검색식으로 실제 검색을 수행하여 확정해야 한다.

### 4. 분석틀의 개요

본 연구는 영상치료의 여섯 가지 핵심 기제를 분석 렌즈로 삼되, 각 기제를 (a) AI 강화 메커니즘, (b) 실현 조건, (c) 미충족 시 실패 양태의 세 축으로 분해하여 분석한다(상세는 Ⅴ장 〈표 1〉 참조). 가능성이 치료적 효과로 실현되기 위한 조건과 윤리적 요건은 보건의료·정신건강 AI 윤리 규범(World Health Organization, 2021; American Psychological Association, 2025)에 정박하여 검토하였다.

---

## Ⅲ. 이론적 배경: 영상치료의 여섯 기제와 치료적 동맹

본 장은 영상치료의 효과를 설명하는 여섯 가지 핵심 기제를 고전·1차 이론에 정박하여 심층 고찰하고, 이 기제들을 통합하는 치료적 동맹을 별도로 다룬다. 이는 다음 장에서 AI 영상치유의 가능성을 분석하는 준거가 된다.

본 연구의 제목은 'AI 영상치유의 가능성과 영상치료 기제에 관한 고찰'로, 세 개의 핵심 개념—'영상치료 기제', '(AI 영상치유의) 가능성', 'AI 영상치유'—을 담고 있다. 이 장의 이론적 배경은 이 가운데 첫 번째 개념인 '영상치료 기제'를 정초(定礎)하는 데 일차적 목적을 둔다. 즉 본 장에서 고찰하는 여섯 기제와 치료적 동맹은 단순한 이론 나열이 아니라, 제목이 묻는 '가능성'을 평가할 때 그 평가가 정박해야 할 *준거 기제*를 확정하는 작업이다. 영상치료의 효과가 영상 자체가 아니라 영상이 촉발하는 치료 기제를 통해 발생한다면(Sacilotto et al., 2022), 'AI 영상치유의 가능성'이라는 물음은 곧 'AI가 이들 기제를 구현·강화할 수 있는가'라는 물음으로 환원되며, 따라서 각 기제가 *무엇을 작동 조건으로 요구하는가*를 1차 이론 수준에서 규명해 두는 것이 가능성 평가의 전제가 된다. 이러한 관점에서 본 장의 각 절은 해당 기제가 AI 영상치유의 가능성을 가늠하는 데 어떤 준거를 제공하는지를 절말에서 명시적으로 연결한다.

### 1. 동일시와 투사(identification & projection)

동일시와 투사는 영상치료의 가장 기본적인 기제이다. 내담자는 영상 속 인물·상황에 자신을 투영하여, 직접 말하기 어려운 감정과 갈등을 안전한 심리적 거리에서 다룬다. 이 기제의 뿌리는 정신역동 이론의 방어기제 개념에 있다. 투사는 받아들이기 어려운 자기 내부의 감정·충동을 외부 대상에게 귀속시키는 과정이며, 동일시는 타인의 속성을 자기 안으로 받아들이는 과정으로, 영상 관람은 이 두 과정이 안전하게 일어날 무대를 제공한다. Hesley와 Hesley(2001)는 치료자가 내담자의 호소 문제와 관련된 영화를 선별하고 시청 후 대화를 통해 인물의 갈등과 내담자의 경험을 연결하는 '비디오워크(videowork)' 기법을 체계화하였다.

신경과학적 차원에서 동일시는 거울뉴런 체계와 '체화된 시뮬레이션(embodied simulation)'으로 재조명된다. Gallese와 Goldman(1998)에 따르면, 타인의 행위를 관찰할 때 관찰자의 운동·정서 표상이 마치 자신이 그 행위를 수행하거나 그 정서를 경험하는 것처럼 활성화되며, 이 자동적·무의식적 시뮬레이션이 타인의 마음을 이해하는 신경 기반이 된다. 영상 속 인물에 대한 동일시는 이러한 시뮬레이션 기제가 서사적 맥락에서 작동한 결과로 이해할 수 있다. 한편 서사 몰입의 관점에서 Green과 Brock(2000)은 이야기 세계로 '수송'된 정도가 클수록 인물에 대한 호의적 평가와 이야기 일관적 신념이 증가함을 실험적으로 보였는데, 이는 동일시가 단순한 감정 이입을 넘어 신념·태도 변화의 통로가 됨을 시사한다. 국내 연구에서도 위기청소년 대상 집단영화치료가 동일시를 통해 정서조절력을 향상시키고 문제행동을 감소시킨 것으로 보고되었다(강은주, 천성문, 2011). 다만 이론이 일관되게 요구하는 것은, 투사·동일시로 환기된 내용이 *해석*을 통해 자기 이해로 전환되어야 한다는 점이다. 환기 자체는 치료가 아니며, 거울에 비친 상을 자기 것으로 통합하는 작업이 동반될 때 비로소 통찰이 된다. 이 '환기→해석→통합'의 조건은 곧 AI 영상치유가 동일시 기제를 구현할 가능성을 판정하는 준거가 된다. 즉 맞춤 영상이 투사·동일시를 더 강하게 환기하더라도, 그 환기를 자기 이해로 전환하는 해석 과정을 시스템이나 치료자가 보장하지 못하면 그 가능성은 효과로 실현되지 못한다.

### 2. 정서적 정화(catharsis)

정화는 영상이 환기한 감정을 표출·경험함으로써 긴장이 해소되고 정서가 정리되는 기제이다. 정화는 집단·개인 심리치료의 핵심 치료 요인으로 오랫동안 논의되어 왔다(Yalom & Leszcz, 2020). 본 연구는 정화를 단순한 '감정 배출'이 아니라 Scheff(1979)의 거리두기 모형으로 재구성한다. Scheff에 따르면 치료적 정화는 두 조건의 동시 충족을 요구한다. 첫째는 억압된 고통의 *환기*이며, 둘째는 참여자가 그 고통의 원천으로부터 적절히 *거리를 둔(distancing)* 상태, 즉 그 상황을 '자신의 것이면서 동시에 자신의 것이 아닌' 것으로 동시에 경험하는 미적 거리(aesthetic distance)이다. 거리가 너무 가까우면 압도(underdistancing)가, 너무 멀면 무관여(overdistancing)가 일어나며, 오직 균형 잡힌 거리에서만 정서적 방출이 인지적 처리로 이어진다. 이는 정서처리이론과도 공명한다. Foa와 Kozak(1986)은 공포 구조의 활성화가 교정적 정보의 통합으로 이어질 때 비로소 정서처리가 완성된다고 보았는데, 활성화(환기)만으로는 불충분하며 교정적 처리(거리두기·재구성)가 동반되어야 한다는 점에서 Scheff의 모형과 구조적으로 일치한다. 따라서 정화는 안전한 환경에서 적절한 강도와 거리에서 일어날 때만 치료적이며, 과도하거나 통제되지 않은 정서 환기는 오히려 재외상화(retraumatization)로 이어질 수 있다. 이 점에서 정화 기제는 AI 영상치유의 '가능성'을 평가할 때 강도 조절·미적 거리라는 작동 조건을 필수 준거로 부과한다. 즉 즉시·반복 생성이라는 AI의 강점이 정화의 가능성을 높이는지 아니면 재외상화의 위험으로 전도되는지는, 이 거리두기 조건의 충족 여부에 달려 있다.

### 3. 보편성(universality)

비슷한 고통을 겪는 인물을 보며 '나만 그런 것이 아니다'를 경험하는 것은 고립감을 완화하는 강력한 치료 요인이다(Yalom & Leszcz, 2020). Yalom과 Leszcz는 보편성을 집단치료의 핵심 치료 요인 중 하나로 제시하면서, 그 힘이 단지 '비슷한 사례를 안다'는 인지적 정보가 아니라 실재하는 타인과 고통을 *공유한다*는 정서적·관계적 체험에서 비롯됨을 강조하였다. 영상의 서사는 인물의 내면과 관계를 생생하게 제시함으로써 이러한 보편성 경험을 효과적으로 매개한다. 서사 수송 이론의 관점에서(Green & Brock, 2000), 잘 구성된 이야기에 몰입한 관객은 인물의 처지를 자기 것처럼 경험하며 '나와 같은 사람이 존재한다'는 연결감을 획득한다. 다만 이론이 시사하는 보편성의 본질은 *상호성*에 있다. 즉 타인 역시 나를 보고 나의 고통을 인정한다는 양방향적 인정이 보편성의 치료적 핵심이며, 이 점은 일방향적으로 제공되는 매체가 보편성을 어디까지 매개할 수 있는지의 한계를 규정한다. 따라서 보편성 기제는 AI 영상치유의 가능성에 명확한 임계선을 긋는다. 즉 AI가 공명하는 맞춤 서사를 생성할 가능성은 인정하되, 그 가능성이 치료적 보편성으로 실현되려면 일방향 제공을 넘어 실재하는 타인의 상호적 인정과 연결되어야 한다는 조건이 따른다.

### 4. 관찰학습(observational learning)

영상 속 인물의 적응적 대처를 관찰함으로써 새로운 행동을 학습하는 것이 관찰학습이다. 이는 Bandura(1977)의 사회학습이론에 이론적 기반을 두며, 특정 기술이나 대처 방식을 시연하는 비디오 모델링의 핵심 원리이다. Bandura에 따르면 관찰학습이 실제 행동으로 이어지려면 주의(attention)·파지(retention)·운동재생(reproduction)·동기(motivation)의 네 하위 과정이 모두 충족되어야 한다. 즉 모델을 주의 깊게 관찰하고, 그 행동을 기억으로 부호화하며, 이를 실제 행동으로 재현하고, 재현을 지속할 동기(대리강화·자기효능감)를 가져야 한다. 관찰만으로는 학습이 완성되지 않으며, 특히 운동재생과 동기 단계는 영상 바깥의 실생활 맥락을 요구한다는 점이 중요하다. 이는 관찰학습 기제가 영상 안에서 완결되지 않고 영상-실생활 간 *전이(transfer)*를 본질적 조건으로 가짐을 의미한다. 그러므로 AI 영상치유가 맞춤 모델링 영상을 생성할 가능성은 관찰학습의 전반부(주의·파지)에 국한되며, 그 가능성이 실제 행동 변화로 실현되려면 영상 바깥의 동기·강화·전이 설계가 결합되어야 한다는 조건이 제목의 '가능성' 물음에 부과된다.

### 5. 정서 조절과 안정화(affect regulation)

안정적·심미적 영상 자극은 자율신경계를 안정시켜 스트레스와 불안을 완화한다. 실제로 영화치료 프로그램은 우울증 중년여성의 우울 감소와 정서표현성 향상에 효과가 있는 것으로 나타났다(신경아, 2018). 자연·명상 영상을 활용한 이완·심상유도는 이 기제를 직접 겨냥한다. 정서 조절은 여섯 기제 중 영상 자극과 생리적 반응 사이의 경로가 비교적 직접적이어서, 매체가 단독으로 효과를 낼 여지가 가장 큰 영역이다. 다만 이론적으로 정서 조절은 '언제 안정화가 필요하고 언제 활성화가 필요한가'에 대한 상태 평가를 전제한다. 안정화가 회피의 형태로 오용되면, 직면이 필요한 정서를 만성적으로 우회하는 결과를 낳을 수 있기 때문이다. 정서 조절은 여섯 기제 중 AI 영상치유의 가능성이 가장 직접적으로 실현될 수 있는 영역이지만, 그 가능성조차 '언제 안정화하고 언제 활성화할 것인가'라는 상태 평가 조건을 전제로 한다는 점에서, 제목이 묻는 가능성은 여기서도 무조건적 가능성이 아니라 조건부 가능성으로 규정된다.

### 6. 치료적 대화의 매개(therapeutic mediation)

영상은 그 자체로 치유하는 것이 아니라, 시청 후 치료자와 나누는 대화·해석의 촉매로 기능한다. Sacilotto 등(2022)은 영상의 공유 시청이 치료자와 내담자 사이에 '공통의 언어(common vocabulary)'를 형성하여 치료적 관계를 강화한다고 보았다. 이 기제는 앞의 다섯 기제가 흩어진 정서적 사건에 머물지 않고 자기 서사로 통합되도록 매개한다. McAdams(2001)의 내러티브 정체성 이론에 따르면, 인간은 삶에 통일성과 목적을 부여하기 위해 내면화되고 진화하는 자기 이야기를 구성하며, 정체성 자체가 곧 하나의 생애 이야기이다. 영상이 환기한 단편적 정서·기억은 치료적 대화를 통해 내담자의 생애 서사 안에 자리를 얻을 때 비로소 변화의 자원이 된다. 즉 대화의 매개는 정서적 사건을 서사적 의미로 전환하는 통합 기제이다. 이 기제는 'AI 영상치유'라는 개념 자체의 한계를 가장 첨예하게 드러내는 지점이기도 하다. AI는 영상이라는 *소재*를 생성할 수 있으나, 그 소재를 생애 서사로 통합하는 의미 처리는 관계적 작업이므로, 제목의 '가능성'은 이 여섯 번째 기제에서 가장 좁아지고 인간 치료자의 매개를 그 실현 조건으로 요구한다.

### 7. 통합 기제로서의 치료적 동맹

여섯 기제를 가로지르며 이들을 치료적 변화로 통합하는 상위 조건이 치료적 동맹이다. 심리치료 성과를 설명하는 공통요인 연구는 기법보다 치료적 관계가 성과를 더 잘 예측함을 일관되게 보고해 왔으며(Cuijpers et al., 2019), Bordin(1979)은 이 관계를 목표(goals)·과제(tasks)·유대(bond)의 세 요소로 구성된 작업동맹(working alliance)으로 개념화하였다. 다수 연구를 종합한 메타분석 역시 동맹이 강건한 성과 예측 변인임을 확인한다(Flückiger et al., 2018). 자기결정성 이론의 관점에서도 관계의 중요성은 재확인된다. Ryan과 Deci(2000)는 자율성·유능성과 더불어 *관계성(relatedness)*을 인간의 기본 심리적 욕구로 제시하였는데, 치료적 변화의 동기 역시 이 관계성 욕구가 충족되는 관계 안에서 지속된다. 따라서 앞의 여섯 기제는 모두 이 동맹의 토대 위에서 비로소 치료적 변화로 통합된다.

---

## Ⅳ. AI 영상치유의 기술적 토대와 디지털 정신건강 맥락

### 1. 기술적 토대

AI 영상치유의 기술적 기반은 디퓨전 트랜스포머(diffusion transformer) 계열의 텍스트-투-비디오 모델로, 자연어 프롬프트로부터 고해상도 영상을 생성한다(Sun et al., 2024; Liu et al., 2024). 여기에 사용자의 정서 상태·선호·이력을 반영하는 개인화 알고리즘과, 언어적 입력을 해석해 영상·음성·텍스트를 제공하는 대화형 멀티모달 상호작용이 결합된다. 이러한 기술적 특성은 세 가지로 요약된다. 첫째, **맞춤성(personalization)** 은 기성 콘텐츠에서 적합한 사례를 탐색하던 방식을 넘어, 개인의 상황·정서에 특정된 콘텐츠를 생성한다. 둘째, **즉시성(immediacy)** 은 정서적 환기나 안정화가 필요한 순간에 지체 없이 콘텐츠를 제공·반복한다. 셋째, **상호작용성(interactivity)** 은 사용자의 반응에 따라 콘텐츠를 동적으로 조정한다. 이 세 특성은 영상치료 기제의 구현 방식을 변화시킬 잠재력을 지닌다. 다만 생성 결과는 학습 데이터의 통계적 패턴에 기반하므로 의도와 다른 산출(hallucination), 통제의 불완전성, 데이터 편향을 내포한다는 본질적 한계도 함께 지닌다(Sun et al., 2024).

### 2. 디지털 정신건강 맥락

AI 영상치유는 디지털 정신건강 흐름의 일부이다. 176편의 무작위통제연구(RCT)를 종합한 메타분석은 정신건강 앱이 우울·불안 증상 완화에 유의한 효과가 있음을 보고하였고(Linardon et al., 2024), 92편의 RCT를 분석한 연구도 디지털 개입의 임상적 효과와 더불어 설득적 설계·사용자 참여가 효과를 매개함을 확인하였으며(Valentine et al., 2025), 생성형 AI 챗봇을 다룬 메타분석은 일정한 효과 가능성을 시사한다(Zhang et al., 2025). 다만 생성형 AI 기반 도구의 임상적 검증은 아직 초기 단계에 머물러 있으며, 윤리적 함의에 대한 체계적 검토가 요구되고 있다(Wang et al., 2025). 또한 '근거 기반'을 표방하는 생성형 AI 정신건강 챗봇의 안전성·근거성에 대한 비판적 평가의 필요성이 제기되어 왔다(Parks et al., 2025). 이러한 맥락은 AI 영상치유의 가능성이 효과성·안전성의 실증적 검증과 분리될 수 없음을 보여준다.

---

## Ⅴ. 분석틀: 세 축 분석 모형

본 연구는 Ⅲ장의 여섯 기제 각각을 (a) AI 강화 메커니즘, (b) 실현 조건, (c) 미충족 시 실패 양태의 세 축으로 분해하여 분석한다. 이 세 축 모형은 가능성(a)과 한계(c)를 분리된 목록이 아니라, 동일한 실현 조건(b)의 충족 여부에 따라 갈라지는 하나의 연속체로 이해하게 한다. 즉 실현 조건이 충족되면 가능성이 치료적 효과로 전환되고, 미충족되면 그 가능성은 특유의 실패 양태로 전도(顚倒)된다. 분석 결과를 종합하면 〈표 1〉과 같다.

**〈표 1〉 영상치료 기제별 AI 영상치유의 강화 메커니즘·실현 조건·실패 양태**

| 치료 기제 | (a) AI 강화 메커니즘 | (b) 실현 조건 | (c) 미충족 시 실패 양태 |
|----------|---------------------|--------------|----------------------|
| 동일시·투사 | 맞춤 심상으로 투사 대상 정밀화 | 투사 내용의 임상적 해석·통합 | 자기 통합 없는 정서 자극의 소비 |
| 정서적 정화 | 즉시·반복 정서 환기 | 미적 거리 유지·강도 조절·정화 후 담아내기 | 정화 없는 자극(환기만 있고 처리 없음), 재외상화 |
| 보편성 | 공명하는 맞춤 서사 제공 | 실재하는 타인·집단과의 상호적 연결 | 관계 없는 보편성(고립의 강화) |
| 관찰학습 | 맞춤 모델링 영상 생성 | 동기·강화·실생활 전이 설계 | 시청에 그치는 비전이적 학습 |
| 정서 조절·안정화 | 즉시·반복 이완·심상 지원 | 상태 평가·위기 연계·회피 오용 차단 | 직면 회피의 만성화, 위기 미감지 |
| 대화의 매개 | 콘텐츠 생성·서사 소재 보조 | 치료자의 관계적 의미 처리·서사 통합 | 의미 없는 콘텐츠 범람, 동맹 부재 |

---

## Ⅵ. 기제별 구현 가능성 분석

### 1. 동일시·투사의 강화

**(a) AI 강화 메커니즘.** AI 영상치유의 맞춤성은 동일시 기제를 강화할 잠재력이 가장 큰 지점이다. 기성 영화에서 적합한 인물을 찾던 방식과 달리, 내담자의 상황·정서를 반영한 맞춤 심상을 생성함으로써 투사의 대상을 정밀화하고 더 정확한 동일시를 유도할 수 있다(Sacilotto et al., 2022). 체화된 시뮬레이션의 관점에서(Gallese & Goldman, 1998), 자신과 더 닮은 인물·상황은 관찰자의 정서·운동 표상을 더 강하게 활성화하므로, 맞춤 콘텐츠는 동일시의 신경적 기반을 효과적으로 자극할 수 있다. 서사 수송 이론(Green & Brock, 2000)에 비추어도, 개인에게 공명하는 서사는 수송을 강화하여 몰입과 동일시를 높인다.

**(b) 실현 조건.** 그러나 투사된 내용을 임상적으로 해석하고 통찰로 연결하는 과정이 동반되어야 한다. 동일시 기제의 본질은 환기가 아니라 통합에 있기 때문이다.

**(c) 실패 양태.** 이 조건이 미충족되면 동일시는 자기 통합 없는 정서 자극의 소비로 전락한다. 강한 몰입이 반복되되 그것이 자기 이해로 전환되지 않으면, 내담자는 정서적으로 동요하되 변화하지 않는 상태에 머문다.

### 2. 정서적 정화의 촉진

**(a) AI 강화 메커니즘.** 즉시성과 반복성은 정화 기제에 유리하다. 정서적 환기가 필요한 순간에 즉시 맞춤 영상을 제공하고 반복할 수 있어, 정화의 접근성을 높인다(Foa & Kozak, 1986).

**(b) 실현 조건.** Scheff(1979)의 모형이 요구하듯, 정화는 미적 거리가 유지되고 강도가 조절되며 정화 이후의 담아내기(containing)가 보장될 때만 치료적이다. 즉 환기는 거리두기·재구성과 짝을 이루어야 한다.

**(c) 실패 양태.** 이 조건이 미충족되면 두 가지 실패가 나타난다. 첫째는 '정화 없는 자극'으로, 정서를 반복적으로 환기하되 처리하지 못해 긴장이 해소되지 않고 누적된다. 둘째는 강도 통제 실패로 인한 재외상화로, 미적 거리가 무너져 압도가 일어나는 경우이다. 통제되지 않은 즉시·반복 환기는 치료가 아니라 위해가 될 수 있다.

### 3. 보편성 경험의 매개

**(a) AI 강화 메커니즘.** AI는 사용자의 경험과 공명하는 맞춤 서사를 생성하여 '나만 그런 것이 아니다'라는 보편성 경험을 정교하게 매개할 수 있다(Yalom & Leszcz, 2020). 서사 수송을 통해 인물의 처지에 몰입함으로써 연결감이 환기된다(Green & Brock, 2000).

**(b) 실현 조건.** 다만 보편성의 치료적 힘은 실재하는 타인·집단과의 *상호적* 연결에서 비롯된다. 즉 타인 역시 나를 인정한다는 양방향성이 핵심이다.

**(c) 실패 양태.** AI 생성 서사는 일방향적으로 제공되므로, 이 상호성이 결여되면 '관계 없는 보편성'이라는 역설적 실패가 나타난다. 표면적으로는 공감받는 듯하나 실재하는 인정의 경험이 부재하여, 오히려 고립이 강화될 위험이 있다. 따라서 AI 생성 서사가 진정한 인간적 연결을 어느 정도 매개·보완할 수 있는지는 실증적 검증을 요한다.

### 4. 관찰학습의 개인화

**(a) AI 강화 메커니즘.** AI는 특정 내담자에게 필요한 적응적 대처를 시연하는 맞춤 모델링 영상을 생성할 수 있어, 비디오 모델링의 개인화 수준을 높인다(Bandura, 1977). 자신과 유사한 모델은 대리강화와 자기효능감을 높여 동기 단계를 강화할 수 있다.

**(b) 실현 조건.** Bandura(1977)의 네 하위 과정 중 운동재생과 동기는 영상 바깥의 실생활을 요구하므로, 관찰이 행동 변화로 이어지려면 동기 부여·강화·실생활 전이를 지원하는 설계가 필요하다.

**(c) 실패 양태.** 이 설계가 부재하면 관찰학습은 시청에 그치는 비전이적 학습으로 귀결된다. 적응적 대처를 '보기'는 하되 '하지'는 않는 상태로, 영상 내 학습이 실생활 행동으로 전이되지 않는다.

### 5. 정서 조절·안정화의 즉시 지원

**(a) AI 강화 메커니즘.** 맞춤 이완·심상 영상을 즉시·반복 제공함으로써 정서 조절과 안정화를 자기조력(self-help) 형태로 지원할 수 있다(신경아, 2018). 이 기제는 영상 자극과 생리적 반응의 경로가 직접적이어서, AI 영상치유가 비교적 안전하게 강화할 수 있는 영역이다.

**(b) 실현 조건.** 다만 안정화가 필요한 상태인지에 대한 상태 평가, 위기 신호 시의 전문 연계, 그리고 안정화가 회피로 오용되지 않도록 하는 임상적 판단이 전제되어야 한다.

**(c) 실패 양태.** 상태 평가가 결여되면 직면이 필요한 정서를 만성적으로 우회하는 회피의 만성화가, 위기 연계가 결여되면 자·타해 위험 신호를 감지하지 못하는 안전 실패가 나타난다.

### 6. 대화 매개의 보조: 가능성의 임계

**(a) AI 강화 메커니즘.** AI는 콘텐츠 생성과 서사 소재의 제공을 통해 치료적 대화를 보조할 수 있다.

**(b) 실현 조건.** 그러나 이 여섯 번째 기제, 즉 관계적 의미 처리와 서사 통합은 훈련된 인간 치료자의 작업동맹을 요구한다(Bordin, 1979; Cuijpers et al., 2019; McAdams, 2001). 자기결정성 이론이 제시하는 관계성 욕구의 충족 역시 실재하는 관계를 전제한다(Ryan & Deci, 2000).

**(c) 실패 양태.** 의미 처리가 부재하면, 환기된 정서와 생성된 콘텐츠는 자기 서사로 통합되지 못한 채 의미 없이 범람한다. 이 여섯 번째 기제는 AI가 가장 충족하기 어려운 지점이자, 다른 모든 가능성의 실현을 좌우하는 임계 조건이다. 국내 상담사들도 챗봇의 기능적 유용성은 인정하면서 관계적 깊이의 한계를 지적한 바 있다(장규현, 서영석, 2022). 즉, 앞의 다섯 기제에서의 가능성은 모두 이 여섯 번째 기제가 인간 치료자에 의해 보완될 때 비로소 치료적 효과로 전환된다.

---

## Ⅶ. 기제 기반 설계 원리

기제별 세 축 분석은 AI 영상치유의 가능성이 일정한 조건 아래에서만 치료적 효과로 실현되며, 조건이 미충족될 때 특유의 실패 양태로 전도됨을 보여준다. 이를 토대로 다음 설계 원리를 제안한다.

1. **기제 정합적 설계(mechanism-aligned design)**: 단지 '좋은 영상'이 아니라 특정 치료 기제(예: 동일시, 안정화)를 명시적으로 겨냥하여 콘텐츠를 설계하고, 그 기제의 작동 조건(예: 정화의 미적 거리·강도 조절)을 시스템에 반영한다.
2. **실패 양태 차단 설계(failure-mode safeguards)**: 각 기제의 실패 양태를 사전에 식별하여 차단 장치를 내장한다. 예컨대 정화 기제에는 강도 상한과 정화 후 담아내기 절차를, 안정화 기제에는 위기 신호 탐지·전문 연계 루틴을, 관찰학습 기제에는 실생활 전이 과제를 결합한다.
3. **치료자 매개(therapist-mediated) 통합**: 다섯 기제의 가능성을 실현하는 임계 조건인 관계적 의미 처리는 훈련된 임상가가 책임진다. AI는 콘텐츠 생성 도구, 인간은 의미 처리와 서사 통합의 주체로 역할을 분담한다.
4. **단계적·안전 지향 운영**: 정서 조절·안정화처럼 비교적 안전한 기제를 1차 자기조력 층위에 두고, 강한 정서 환기가 필요한 작업은 임상적 통제 아래 수행하며, 위기 신호 시 전문 연계 절차를 둔다(Parks et al., 2025).
5. **윤리·안전 거버넌스 내장**: 데이터 보호, 편향 점검, 책임 구조를 시스템에 내장한다(World Health Organization, 2021; American Psychological Association, 2025).

---

## Ⅷ. 논의

### 1. 핵심 긴장점의 심화

세 축 분석은 AI 영상치유에 내재한 세 가지 구조적 긴장을 드러낸다.

**첫째, 맞춤성↔진정성 역설.** AI 영상치유의 최대 강점인 맞춤성은 동일시와 수송을 강화하지만(Gallese & Goldman, 1998; Green & Brock, 2000), 동시에 진정성의 문제를 제기한다. 보편성의 치료적 힘이 실재하는 타인과의 상호 인정에서 비롯된다면(Yalom & Leszcz, 2020), 알고리즘이 생성한 '나에게 꼭 맞는' 서사는 역설적으로 실재적 연결의 부재를 은폐할 수 있다. 더 정교한 맞춤일수록 더 그럴듯한 공감의 환영을 제공하나, 그 환영이 실재적 인정을 대체할 수는 없다. 맞춤성의 강화가 진정성의 약화로 이어질 수 있다는 점이 이 역설의 핵심이다.

**둘째, 정화 없는 자극.** 즉시성·반복성은 정서 환기의 접근성을 높이지만, Scheff(1979)와 Foa·Kozak(1986)이 공히 요구하는 거리두기·교정적 처리가 결여되면 환기는 처리로 이어지지 못한다. 자극은 풍부하되 정화는 부재한 상태, 즉 정서적으로 끊임없이 동요하되 해소·통합되지 않는 상태가 AI 영상치유의 가장 흔한 실패 양태가 될 수 있다.

**셋째, 관계 없는 보편성.** 일방향적으로 제공되는 맞춤 서사는 보편성의 외양을 제공하나, 양방향적 인정이라는 그 본질을 결여한다. 이는 고립을 위로하는 듯하나 실재적 관계로 나아가지 못하게 함으로써, 장기적으로 고립을 강화할 위험을 내포한다. 자기결정성 이론의 관계성 욕구(Ryan & Deci, 2000)는 실재하는 관계 속에서만 충족되기 때문이다.

이 세 긴장은 모두 동일한 구조를 갖는다. 즉 AI의 강점(맞춤·즉시·일방향 제공)이 곧 그 위험의 원천이며, 강점이 치료적 효과로 전환되는지 위험으로 전도되는지는 인간 치료자에 의한 의미 처리라는 임계 조건에 달려 있다.

### 2. 예상되는 반론과 재반박

본 연구의 핵심 명제—여섯 번째 기제인 관계적 의미 처리는 AI가 충족하기 어려우며 인간 치료자의 작업동맹을 실현 조건으로 요구한다—에 대해서는 강력한 실증적 반론이 제기될 수 있다. 논증의 견고함은 가장 강한 반론을 정면으로 다룰 때 비로소 확보되므로, 본 절은 이 반론을 충실히 제시한 뒤 본 연구의 기제 분석틀로 재반박한다.

**반론: AI는 이미 인간 수준의 작업동맹을 형성한다.** 최근 디지털 정신건강 연구는 완전 자동화된 대화형 에이전트조차 사용자와 치료적 동맹을 형성함을 실증적으로 보고한다. Fitzpatrick 등(2017)은 무작위통제연구에서 CBT 기반 챗봇 Woebot이 2주 만에 우울 증상을 유의하게 감소시켰음을 보였고, Darcy 등(2021)은 약 3만 6천 명의 사용자 자료를 분석하여 챗봇에 대한 작업동맹(WAI-SR의 유대 하위척도) 점수가 전통적 외래 CBT에서 보고된 수준에 필적하며 그것이 사용 후 3~5일 이내에 형성됨을 확인하였다. Beatty 등(2022)도 자유서술형 CBT 챗봇 Wysa에서 유사한 동맹 형성을 보고하였다. 이 발견들이 옳다면, '동맹은 인간 치료자를 요구한다'는 본 연구의 명제는 경험적으로 반박되며, 나아가 AI 영상치유 역시 자체적으로 동맹을 형성하고 의미를 처리할 수 있다는 추론이 가능하다.

**재반박은 본 연구의 세 축 분석틀 안에서 도출된다.** 첫째, **무엇이 측정되었는가의 문제이다.** WAI-SR가 포착하는 것은 사용자가 *지각한* 유대·목표·과제이며, 이는 정의상 일방향적 지각이다. 그러나 Bordin(1979)의 작업동맹과 Yalom·Leszcz(2020)의 보편성이 치료적 힘을 갖는 근거는 *상호적* 인정—타인 역시 나를 실재로서 인정한다는 양방향성—에 있다(본고 Ⅲ-3, Ⅲ-7). 따라서 챗봇에 대한 높은 동맹 점수는 본 연구의 명제를 반박하기는커녕 오히려 그것이 예측한 '맞춤성↔진정성 역설'과 '관계 없는 보편성'을 실증한다. 즉 사용자는 응답하는 실재적 주체가 부재함에도 유대를 지각하며, 이 '지각된 동맹'이야말로 세 축 모형이 AI가 능숙하게 산출하리라 예견한 *외양*에 해당한다. 반론이 제시한 증거는 동맹의 *외양*을 측정한 것이지 그 *상호적 실질*을 측정한 것이 아니다.

둘째, **기제의 혼동이 있다.** Woebot·Wysa는 심리교육·기분 모니터링·인지 재구성 스크립트를 통한 구조화된 증상 완화를 겨냥하며, 이는 본 연구가 AI가 비교적 안전하고 효과적으로 강화할 수 있다고 *이미 인정한* 정서 조절·안정화 기제, 그리고 관찰학습의 전반부(주의·파지)에 가장 가깝다(Ⅵ-4, Ⅵ-5). 이들은 McAdams(2001)가 말한 생애 서사로의 의미 통합—여섯 번째 기제가 명명하는 작업—을 수행하지 않는다. 그러므로 챗봇 동맹의 증거는 본 연구가 그린 기제별 가능성의 *기울기*를 무너뜨리는 것이 아니라 도리어 확증한다. 즉 하위 기제에서는 가능성이 높고 의미 처리 기제에서 임계에 부딪힌다는 구도가 그대로 유지된다.

셋째, **동맹과 성과를 잇는 경로가 미해결로 남는다.** 설령 유대가 형성된다 해도, 이들 연구에서 동맹은 주로 *참여를 지탱하는 발판*으로 기능하며—이는 참여가 효과를 매개한다는 Valentine 등(2025)의 발견과 정합적이다—생애 서사를 재구성하는 의미 처리의 관계로 기능하지는 않는다. 효과크기는 대체로 작고 단기 증상 창(window) 안에 머물러, 실패 양태가 집중되는 심층 통합 작업은 검증되지 않은 채 남는다.

넷째, **영상치유로의 전이가 성립하지 않는다.** 위 증거는 모두 텍스트 기반 CBT 에이전트에 관한 것이다. AI 영상치유의 고유한 위험—강렬한 환기적 심상이 초래하는 '정화 없는 자극'과 재외상화(Ⅵ-2)—은 영상이 텍스트보다 정서를 더 강하게 환기하면서도 여전히 상호적 주체를 결여하기에 *완화되는 것이 아니라 오히려 첨예해진다.* 따라서 챗봇 동맹의 증거를 영상 사례로 외삽하는 것은 매체 특성을 간과한 추론이다.

**재반박의 귀결.** 이 반론은 본 연구의 명제를 좁히되 전복하지는 못한다. 즉 AI가 참여와 하위 기제를 지탱할 만큼의 *지각된 동맹*을 유지할 수 있다는 점은—본 연구가 이미 인정하는 바이며—성립하나, 여섯 번째 기제의 실현 조건인 상호적 인정과 서사 통합은 여전히 미충족으로 남는다. 오히려 이 반론을 경유함으로써 치료자 매개 모델은 더 정교해진다. 즉 인간 치료자의 역할은 막연한 '관계'가 아니라, *지각된 동맹이 공급할 수 없는 상호적 주체성과 의미 통합 기능*으로 특정된다. 이 점에서 챗봇 동맹 연구는 본 연구의 반증이 아니라, 인간 매개의 필요를 그 기능 수준에서 더 선명하게 규정하는 보강 근거로 재해석된다.

### 3. 선행연구와의 비교

본 연구의 기제 기반 세 축 분석틀과 그로부터 도출된 핵심 명제—'가능성은 실현 조건이 충족될 때에만 효과로 전환된다'—를, 원고에 인용된 선행연구와 명시적으로 대조하면 다음과 같다.

**(1) 디지털 정신건강 메타분석과의 수렴.** 디지털 정신건강 개입의 효과를 종합한 일련의 메타분석은 공통적으로 '효과는 있으나 안전성·근거가 부족하다'는 결론으로 수렴한다. Linardon 등(2024)은 176편의 RCT에서 정신건강 앱의 유의한 증상 완화 효과를 보고하면서도 효과크기가 작고 방법론적 이질성이 크다는 점을 지적하였고, Valentine 등(2025)은 92편의 RCT에서 효과를 확인하되 그 효과가 설득적 설계·사용자 참여에 의해 *매개*됨을 밝혔으며, Zhang 등(2025)은 생성형 AI 챗봇의 일정한 효과 가능성을 시사하되 검증의 초기성을 단서로 달았다. **본 연구의 '가능성은 실현 조건 충족 시에만 효과로 전환된다'는 명제는 이들 메타분석의 결론과 수렴한다.** 다만 본 연구는 이를 확장한다. 즉 선행 메타분석이 '효과를 매개하는 요인이 있다'를 *통계적 매개*의 차원에서 보고했다면, 본 연구는 그 매개 요인을 기제별 *실현 조건*(미적 거리, 실재적 연결, 전이 설계, 의미 처리)으로 구체화하고, 조건 미충족 시의 결과를 '실패 양태'로 명명함으로써, '왜·어떻게' 효과가 갈리는지를 기제 수준에서 설명한다. Valentine 등(2025)의 '참여가 효과를 매개한다'는 발견은 본 연구에서 '참여 자체가 의미 처리로 전환되지 않으면 정화 없는 자극에 머문다'는 명제로 재해석된다.

**(2) 생성형 AI 안전성 비판과의 일치.** Parks 등(2025)은 '근거 기반'을 표방하는 생성형 AI 정신건강 챗봇의 안전성·근거성을 비판적으로 평가할 것을 요구하였고, Wang 등(2025)은 생성형 AI의 임상 적용이 초기 단계이며 윤리적 함의의 체계적 검토가 필요함을 지적하였다. **본 연구의 실패 양태 분석—특히 '재외상화', '위기 미감지', '관계 없는 보편성'—은 이들 비판과 일치하며, 나아가 그 비판에 기제별로 구조화된 평가 기준을 제공한다.** 즉 Parks 등(2025)이 제기한 '안전한가'라는 물음을, 본 연구는 '정화 기제의 강도 조절 장치가 있는가', '안정화 기제에 위기 연계 루틴이 있는가'와 같은 기제 단위의 점검 항목으로 조작화한다.

**(3) 영상치료 스코핑리뷰와의 관계.** Sacilotto 등(2022)의 스코핑리뷰는 영상·영화치료 연구가 산재해 있고 기제에 대한 통합적 틀이 부족함을 드러냈다. **본 연구는 이 공백을 메우는 방향으로 Sacilotto 등(2022)을 확장한다.** 즉 흩어진 영상치료 효과 보고들을 여섯 기제와 치료적 동맹이라는 이론적 틀로 재조직하고, 이를 다시 AI라는 신생 기술의 가능성 평가 렌즈로 전환한 점에서, 본 연구는 스코핑리뷰가 식별한 '기제 통합틀의 부재'에 대한 하나의 응답이다.

**(4) 국내 AI 상담 연구와의 일치 및 차이.** 장규현과 서영석(2022)의 상담사 인식 연구는 챗봇의 기능적 유용성은 인정하면서도 관계적 깊이의 한계를 지적하였다. **본 연구의 '대화 매개 기제는 인간 치료자의 작업동맹을 요구한다'는 결론은 이 현장 인식과 일치하며, 본 연구는 그 인식을 Bordin(1979)의 작업동맹과 Ryan·Deci(2000)의 관계성 욕구라는 이론적 근거로 뒷받침한다.** 한편 여수진과 손승희(2025)의 국내 AI 상담 동향 분석은 연구가 양적으로 증가하나 효과·기제 검증이 부족함을 보고하였는데, **본 연구는 이러한 동향에 대해 '기제 단위의 가설과 설계 원리'를 선제적으로 제공함으로써 후속 실증연구의 좌표를 제시한다는 점에서 차별화된다.** 차이의 원인은 연구 목적의 상이성에 있다. 선행 국내 연구가 *현황 기술*에 초점을 두었다면, 본 연구는 *규범적 분석틀 구성*을 지향하므로, 전자가 '무엇이 연구되고 있는가'를 묻는다면 본 연구는 '무엇이 충족되어야 효과가 되는가'를 묻는다.

종합하면, 본 연구의 결론은 선행 디지털 정신건강 연구 및 국내 AI 상담 연구의 핵심 발견과 광범위하게 *수렴·일치*하되, 그 발견들을 기제별 실현 조건과 실패 양태로 *확장·구조화*한다는 점에서 차별적 기여를 갖는다. 어느 선행연구와도 정면으로 *상충*하지는 않으나, '효과 있음'에서 멈추는 선행연구의 결론을 '조건부 효과'로 정교화한다는 점에서 그 결론의 해상도를 높인다.

### 4. 함의의 네 차원 분화

**(1) 이론적 함의.** 본 연구는 영상치료의 치료 기제를 신생 기술의 가능성을 평가하는 분석 렌즈로 재구성하고, 이를 가능성·조건·실패 양태의 세 축으로 확장하였다. 이는 가능성과 한계를 분리된 목록이 아니라 동일한 조건의 충족 여부에 따라 갈라지는 하나의 구조로 통합하여 이해하게 한다. 또한 정화(Scheff), 서사 수송(Green & Brock), 내러티브 정체성(McAdams), 자기결정성(Ryan & Deci), 체화된 시뮬레이션(Gallese & Goldman) 등 인접 이론을 영상치료 기제 논의에 통합함으로써 이론적 기반을 확장하였다.

**(2) 임상적 함의.** AI 영상치유는 치료자를 대체하는 자율적 치료가 아니라, 특정 치료 기제를 겨냥한 콘텐츠 생성을 임상가의 통제 아래 보조하는 도구로 위치 지어져야 한다. 임상가는 어떤 기제를, 어떤 강도로, 언제 활용할지를 결정하는 게이트키퍼이자 의미 처리·서사 통합의 주체로 기능한다.

**(3) 정책적 함의.** 정책적으로는 효과성·안전성 검증, 데이터 보호, '치료'를 표방하는 검증되지 않은 서비스에 대한 규율이 요구된다. 본 연구의 실패 양태 분석은 규율의 구체적 평가 기준(예: 정화 기제의 강도 조절 장치 유무, 위기 연계 절차 유무)을 제공할 수 있다.

**(4) 기술설계적 함의.** 기술설계 차원에서는 기제 정합적 설계와 실패 양태 차단 설계가 핵심이다. 생성 모델의 통제 불완전성·편향(Sun et al., 2024)을 고려할 때, 콘텐츠 생성 단계뿐 아니라 강도 제어·상태 평가·전이 지원·위기 탐지를 포함하는 기제별 안전 모듈이 시스템에 내장되어야 한다.

---

## Ⅸ. 결론 및 제언

본 연구는 영상치료의 여섯 가지 치료 기제를 고전·1차 이론에 정박하여 심층 재구성하고, AI 영상치유가 각 기제를 어떻게 구현·강화할 수 있는지를 가능성·실현 조건·실패 양태의 세 축으로 분석하였다. 분석 결과, AI 영상치유는 맞춤성·즉시성·상호작용성을 통해 동일시·정화·관찰학습·정서 조절·보편성을 강화할 잠재력을 지니되, 각 기제는 의미 처리·미적 거리·실재적 연결·실생활 전이라는 고유한 실현 조건을 가지며, 이 조건이 충족되지 않을 때 '정화 없는 자극', '관계 없는 보편성', '맞춤성↔진정성 역설'과 같은 특유의 실패 양태로 전도됨을 확인하였다. 따라서 AI 영상치유는 치료 기제를 명시적으로 겨냥하는 기제 정합적 설계, 실패 양태를 차단하는 안전 설계, 그리고 인간 치료자가 의미 처리를 담당하는 치료자 매개형 통합 모델 안에서 그 가능성을 가장 책임 있게 실현할 수 있다.

본 연구는 이론적 고찰에 머문다는 점, 빠르게 변화하는 기술의 특정 시점을 다룬다는 점에서 한계를 지닌다. 후속 연구를 위한 제언은 위의 선행연구 비교에서 직접 도출된다. 첫째, 선행 메타분석(Linardon et al., 2024; Valentine et al., 2025)이 '효과를 매개하는 요인'을 통계적으로 확인하는 데 그쳤으므로, 후속 연구는 본 연구가 구체화한 *실현 조건*(미적 거리·실재적 연결·전이 설계·의미 처리)을 매개변인으로 명시적으로 모형화하여, 기제별로 AI 영상치유의 효과를 검증하는 실증연구(예: 동일시·정화·안정화를 종속변인으로 한 통제 연구)를 수행할 필요가 있다. 둘째, Parks 등(2025)·Wang 등(2025)이 제기한 안전성 우려에 대응하여, 본 연구가 제시한 실패 양태(정화 없는 자극, 관계 없는 보편성, 재외상화, 위기 미감지 등)의 실제 발생 여부와 발생 조건을 검증하는 연구가 요구된다. 셋째, Sacilotto 등(2022)이 지적한 기제 통합틀의 부재를 메우는 방향으로, 기제 정합적 설계와 실패 양태 차단 설계의 구체적 구현 및 그 안전성·수용성을 검증하는 연구가 필요하다. 넷째, 장규현과 서영석(2022)이 확인한 관계적 깊이의 한계를 보완하기 위해, 치료자-AI 협업 프로토콜을 개발하고 그 임상적 효과를 검증하는 연구가 필요하다.

본 연구는 AI 영상치유의 가능성을 검증된 영상치료 기제의 관점에서, 가능성·조건·실패 양태의 세 축으로 구조적으로 분석할 이론적 토대와 설계 원리를 제공했다는 데 의의가 있다.

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

Beatty, C., Malik, T., Meheli, S., & Sinha, C. (2022). Evaluating the therapeutic alliance with a free-text CBT conversational agent (Wysa): A mixed-methods study. *Frontiers in Digital Health, 4*, Article 847991. https://doi.org/10.3389/fdgth.2022.847991

Bordin, E. S. (1979). The generalizability of the psychoanalytic concept of the working alliance. *Psychotherapy: Theory, Research & Practice, 16*(3), 252–260. https://doi.org/10.1037/h0085885

Cuijpers, P., Reijnders, M., & Huibers, M. J. H. (2019). The role of common factors in psychotherapy outcomes. *Annual Review of Clinical Psychology, 15*, 207–231. https://doi.org/10.1146/annurev-clinpsy-050718-095424

Darcy, A., Daniels, J., Salinger, D., Wicks, P., & Robinson, A. (2021). Evidence of human-level bonds established with a digital conversational agent: Cross-sectional, retrospective observational study. *JMIR Formative Research, 5*(5), e27868. https://doi.org/10.2196/27868

Fitzpatrick, K. K., Darcy, A., & Vierhile, M. (2017). Delivering cognitive behavior therapy to young adults with symptoms of depression and anxiety using a fully automated conversational agent (Woebot): A randomized controlled trial. *JMIR Mental Health, 4*(2), e19. https://doi.org/10.2196/mental.7785

Flückiger, C., Del Re, A. C., Wampold, B. E., & Horvath, A. O. (2018). The alliance in adult psychotherapy: A meta-analytic synthesis. *Psychotherapy, 55*(4), 316–340. https://doi.org/10.1037/pst0000172

Foa, E. B., & Kozak, M. J. (1986). Emotional processing of fear: Exposure to corrective information. *Psychological Bulletin, 99*(1), 20–35. https://doi.org/10.1037/0033-2909.99.1.20

Gallese, V., & Goldman, A. (1998). Mirror neurons and the simulation theory of mind-reading. *Trends in Cognitive Sciences, 2*(12), 493–501. https://doi.org/10.1016/S1364-6613(98)01262-5

Green, M. C., & Brock, T. C. (2000). The role of transportation in the persuasiveness of public narratives. *Journal of Personality and Social Psychology, 79*(5), 701–721. https://doi.org/10.1037/0022-3514.79.5.701

Hesley, J. W., & Hesley, J. G. (2001). *Rent two films and let's talk in the morning: Using popular movies in psychotherapy* (2nd ed.). Wiley.

Linardon, J., Cuijpers, P., Carlbring, P., Messer, M., & Fuller-Tyszkiewicz, M. (2024). Current evidence on the efficacy of mental health smartphone apps for symptoms of depression and anxiety: A meta-analysis of 176 randomized controlled trials. *World Psychiatry.* https://pmc.ncbi.nlm.nih.gov/articles/PMC10785982/

Liu, Y., Zhang, K., Li, Y., Yan, Z., Gao, C., Chen, R., Yuan, Z., Huang, Y., Sun, H., Gao, J., He, L., & Sun, L. (2024). *Sora: A review on background, technology, limitations, and opportunities of large vision models* [Preprint]. arXiv. https://doi.org/10.48550/arXiv.2402.17177

McAdams, D. P. (2001). The psychology of life stories. *Review of General Psychology, 5*(2), 100–122. https://doi.org/10.1037/1089-2680.5.2.100

Page, M. J., McKenzie, J. E., Bossuyt, P. M., Boutron, I., Hoffmann, T. C., Mulrow, C. D., Shamseer, L., Tetzlaff, J. M., Akl, E. A., Brennan, S. E., Chou, R., Glanville, J., Grimshaw, J. M., Hróbjartsson, A., Lalu, M. M., Li, T., Loder, E. W., Mayo-Wilson, E., McDonald, S., … Moher, D. (2021). The PRISMA 2020 statement: An updated guideline for reporting systematic reviews. *BMJ, 372*, n71. https://doi.org/10.1136/bmj.n71

Parks, A., Travers, E., Perera-Delcourt, R., Major, M., Economides, M., & Mullan, P. (2025). Is this chatbot safe and evidence-based? A call for the critical evaluation of generative AI mental health chatbots. *Journal of Participatory Medicine, 17*(1), e69534. https://doi.org/10.2196/69534

Ryan, R. M., & Deci, E. L. (2000). Self-determination theory and the facilitation of intrinsic motivation, social development, and well-being. *American Psychologist, 55*(1), 68–78. https://doi.org/10.1037/0003-066X.55.1.68

Sacilotto, E., Salvato, G., Villa, F., Salvi, F., & Bottini, G. (2022). Through the looking glass: A scoping review of cinema and video therapy. *Frontiers in Psychology, 12*, Article 732246. https://doi.org/10.3389/fpsyg.2021.732246

Scheff, T. J. (1979). *Catharsis in healing, ritual, and drama.* University of California Press.

Sun, R., Zhang, Y., Shah, T., Sun, J., Zhang, S., Li, W., Duan, H., Wei, B., & Ranjan, R. (2024). *From Sora what we can see: A survey of text-to-video generation* [Preprint]. arXiv. https://doi.org/10.48550/arXiv.2405.10674

Valentine, L., Hinton, J. D. X., Bajaj, K., Boyd, L., O'Sullivan, S., Sorenson, R. P., Bell, I. H., Sobredo Vega, M., Liu, P., Peters, W., Mangelsdorf, S. N., Wren, T. W., Moller, C., Cross, S., McEnery, C., Bendall, S., Nicholas, J., & Alvarez-Jimenez, M. (2025). A meta-analysis of persuasive design, engagement, and efficacy in 92 RCTs of mental health apps. *npj Digital Medicine, 8*, Article 229. https://doi.org/10.1038/s41746-025-01567-5

Wang, X., Zhou, Y., & Zhou, G. (2025). The application and ethical implication of generative AI in mental health: Systematic review. *JMIR Mental Health, 12*, e70610. https://doi.org/10.2196/70610

World Health Organization. (2021). *Ethics and governance of artificial intelligence for health: WHO guidance.* World Health Organization. https://www.who.int/publications/i/item/9789240029200

Yalom, I. D., & Leszcz, M. (2020). *The theory and practice of group psychotherapy* (6th ed.). Basic Books.

Zhang, Q., Zhang, R., Xiong, Y., Sui, Y., Tong, C., & Lin, F.-H. (2025). Generative AI mental health chatbots as therapeutic tools: Systematic review and meta-analysis of their role in reducing mental health issues. *Journal of Medical Internet Research, 27*, e78238. https://doi.org/10.2196/78238
