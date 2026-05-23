Journal of the Korea Academia-Industrial cooperation Society

Vol. XX, No. X pp. XXX-XXX, 20XX

https://doi.org/10.5762/KAIS.20XX.XX.X.XXX

ISSN 1975-4701 / eISSN 2288-4688

# AI 영상치유의 가능성과 영상치료 기제에 관한 고찰

**저자명<sup>1\*</sup>**

○○대학교 ○○학과

## A Study on the Possibilities of AI Video Healing and the Mechanisms of Video Therapy

**Author Name<sup>1\*</sup>**

Department of ○○, ○○ University

**요  약**  본 연구는 영상치료(video therapy)의 치료 기제를 심층적으로 고찰하고, 생성형 인공지능(generative AI) 기반 '영상치유'가 각 기제를 어떻게 구현·강화할 수 있는지를 기제별로 분석하여 그 가능성과 실현 조건을 규명하는 것을 목적으로 한다. 영상치료는 동일시와 투사, 정서적 정화(catharsis), 보편성(universality), 관찰학습, 정서 조절, 그리고 치료적 대화의 매개라는 정교한 기제 위에서 발전해 왔으며, 그 효과는 국내외 연구를 통해 보고되어 왔다. 텍스트-투-비디오(text-to-video) 생성 모델의 발전으로 개인 맞춤형 영상을 즉시 생성하는 일이 가능해지면서, AI 영상치유는 이들 기제를 새로운 방식으로 구현할 잠재력을 지니게 되었다. 본 연구는 이론적 문헌고찰을 통해 영상치료의 여섯 가지 핵심 기제를 분석 렌즈로 삼아 AI 영상치유의 기제별 구현 가능성을 검토하고, 각 가능성이 치료적 효과로 실현되기 위한 조건을 도출하였다. 분석 결과, AI 영상치유는 맞춤성·즉시성·상호작용성을 통해 동일시·정화·관찰학습·정서 조절을 강화할 잠재력을 지니되, 그 가능성은 치료적 관계 안에서의 의미 처리, 임상적 통제, 윤리적 안전장치라는 조건이 충족될 때만 치료적 효과로 전환됨을 확인하였다. 이에 본 연구는 기제 기반 설계 원리와 치료자 매개형 통합 모델을 제안하며, 후속 실증연구의 방향을 제시한다.

**Abstract**  This study aims to examine in depth the therapeutic mechanisms of video therapy and to analyze, mechanism by mechanism, how generative artificial intelligence (AI)–based "video healing" can implement and strengthen each mechanism, thereby clarifying its possibilities and conditions for realization. Video therapy has developed upon sophisticated mechanisms—identification and projection, emotional catharsis, universality, observational learning, affect regulation, and the mediation of therapeutic dialogue. As text-to-video generative models advance, AI video healing has come to possess the potential to implement these mechanisms in novel ways. Through a theoretical literature review, this study uses the six core mechanisms of video therapy as an analytic lens to examine the mechanism-specific implementation possibilities of AI video healing, and derives the conditions under which each possibility can be realized as a therapeutic effect. The analysis confirms that AI video healing has the potential to strengthen identification, catharsis, observational learning, and affect regulation through personalization, immediacy, and interactivity; however, these possibilities are converted into therapeutic effects only when conditions of meaning processing within the therapeutic relationship, clinical control, and ethical safeguards are met. Accordingly, this study proposes mechanism-based design principles and a therapist-mediated integrative model, and suggests directions for future empirical research.

**Keywords :** AI Video Healing, Video Therapy, Therapeutic Mechanisms, Identification, Emotional Catharsis, Therapeutic Alliance

*Corresponding Author : Author Name(○○ Univ.)

email: ____________@____________

Received XXX XX, 20XX&nbsp;&nbsp;&nbsp;Revised XXX XX, 20XX

Accepted XXX XX, 20XX&nbsp;&nbsp;&nbsp;Published XXX XX, 20XX

## 1. 서론

### 1.1 연구의 필요성 및 목적

영상은 인간의 정서에 직접적이고 강력하게 작용하는 매체이다. 한 편의 영화나 짧은 영상이 관객의 감정을 환기하고, 억압된 기억을 떠올리게 하며, 자기 자신을 새로운 시각에서 바라보게 만든다는 사실은 오랫동안 임상 현장에서 활용되어 왔다[1]. 이러한 경험적 토대 위에서 발전한 영상치료(video therapy) 혹은 영화치료(cinema therapy)는, 단순히 영상을 보는 행위가 아니라 동일시·정화·통찰 등 일련의 심리적 기제를 통해 치료적 변화를 일으키는 접근으로 개념화되어 왔다[2]. 국내에서도 영화치료는 우울증 중년여성, 위기청소년 등 다양한 대상에게 적용되어 정서 개선 효과가 보고되어 왔다[3,4].

2020년대에 들어 생성형 인공지능은 텍스트 프롬프트만으로 고품질 영상을 즉시 생성하는 단계에 이르렀다[5,6]. 이로써 개인의 정서 상태·기억·선호에 맞춘 영상을 실시간으로 제공하는 'AI 영상치유'가 새로운 가능성으로 부상하였으며, 국내 상담·심리치료 분야에서도 AI 활용 연구가 꾸준히 증가하고 있다[7].

그러나 AI 영상치유에 대한 기존 논의는 주로 '기술이 무엇을 할 수 있는가'(맞춤 영상 생성, 즉시성 등)에 초점을 맞춰 왔다. 영상치료의 효과는 영상 그 자체가 아니라, 영상이 촉발하는 치료 기제—동일시, 정화, 보편성, 관찰학습, 대화의 매개—를 통해 발생한다[2,8]. 따라서 AI 영상치유의 가능성을 제대로 평가하려면, 기술이 이들 치료 기제를 실제로 구현·강화할 수 있는가를 기제별로 따져 보아야 한다. 기술적 성능과 치료적 기제의 구현은 별개의 문제이며, 후자에 대한 분석 없이 전자만으로 치유를 논하는 것은 치료의 본질을 기술의 산출물로 환원하는 오류에 빠질 수 있다.

본 연구의 목적은 영상치료의 치료 기제를 심층 고찰하고, AI 영상치유가 각 기제를 어떻게 구현·강화할 수 있는지를 분석하여, 그 가능성과 실현 조건 및 설계 원리를 도출하는 데 있다.

### 1.2 연구 문제

본 연구는 다음과 같은 연구 문제를 설정하였다. 첫째, 영상치료의 핵심 치료 기제와 그 이론적 근거는 무엇인가? 둘째, AI 영상치유는 각 치료 기제를 어떻게 구현·강화할 수 있으며, 그 가능성은 무엇인가? 셋째, 각 기제의 가능성이 치료적 효과로 실현되기 위한 조건과 설계 원리는 무엇인가?

## 2. 이론적 배경

### 2.1 영상치료의 개념과 치료 기제

영상치료는 영상 매체를 매개로 하는 심리치료적 개입을 포괄하는 용어이다. Sacilotto 등[2]은 영상치료를 크게 상업 영화를 활용하는 고전적 영화치료(classical cinematherapy)와, 특정 기술을 시연하는 영상을 통해 모방학습을 유도하는 비디오 모델링(video modeling)으로 구분하였다. Hesley와 Hesley[1]는 치료자가 내담자의 호소 문제와 관련된 영화를 선별하고 시청 후 대화를 통해 인물의 갈등과 내담자의 경험을 연결하는 '비디오워크(videowork)' 기법을 체계화하였다.

영상치료의 치유적 작용은 다음 여섯 가지 기제로 설명된다[2]. 첫째, 동일시와 투사(identification & projection)는 내담자가 영상 속 인물·상황에 자신을 투영하여 직접 말하기 어려운 감정과 갈등을 안전한 거리에서 다루게 하는 기제이다. 국내 연구에서도 위기청소년 대상 집단영화치료가 동일시를 통해 정서조절력을 향상시키고 문제행동을 감소시킨 것으로 보고되었다[3]. 둘째, 정서적 정화(catharsis)는 영상이 환기한 감정을 표출·경험함으로써 긴장을 해소하는 기제로, 집단·개인 심리치료의 핵심 치료 요인으로 논의되어 왔으며[8], 정서처리이론이 시사하듯 정서 구조의 활성화를 통해 이후의 인지적 재구성과 통찰을 위한 토대를 제공한다[13]. 셋째, 보편성(universality)은 비슷한 고통을 겪는 인물을 보며 '나만 그런 것이 아니다'를 경험하게 하는 강력한 치료 요인이다[8]. 넷째, 관찰학습(observational learning)은 영상 속 인물의 적응적 대처를 관찰함으로써 새로운 행동을 학습하는 기제로 Bandura[9]의 사회학습이론에 기반한다. 다섯째, 정서 조절(affect regulation)은 안정적·심미적 영상 자극이 자율신경계를 안정시켜 스트레스와 불안을 완화하는 기제이며, 영화치료 프로그램이 우울증 중년여성의 우울 감소와 정서표현성 향상에 효과가 있는 것으로 나타났다[4]. 여섯째, 치료적 대화의 매개(therapeutic mediation)는 영상이 그 자체로 치유하는 것이 아니라 시청 후 치료자와 나누는 대화·해석의 촉매로 기능함을 의미한다[2].

심리치료 성과를 설명하는 공통요인 연구는 기법보다 치료적 관계가 성과를 더 잘 예측함을 일관되게 보고해 왔으며[14], Bordin[10]은 이 관계를 목표·과제·유대로 구성된 작업동맹(working alliance)으로 개념화하였다. 다수 연구의 메타분석 역시 동맹이 강건한 성과 예측 변인임을 확인한다[15]. 따라서 위의 다섯 기제는 모두 여섯 번째 기제, 즉 관계적 의미 처리 속에서 비로소 치료적 변화로 통합된다.

### 2.2 AI 영상치유의 기술적 토대와 맥락

AI 영상치유의 기술적 기반은 디퓨전 트랜스포머(diffusion transformer) 계열의 텍스트-투-비디오 모델로, 자연어 프롬프트로부터 고해상도 영상을 생성한다[5,6]. 여기에 사용자의 정서 상태·선호·이력을 반영하는 개인화 알고리즘과, 언어적 입력을 해석해 영상·음성·텍스트를 제공하는 대화형 멀티모달 상호작용이 결합된다. 정서·행동 지원을 목적으로 한 생성형 AI 챗봇은 이미 다양하게 시도되고 있다[16]. 이러한 기술적 특성—맞춤성, 즉시성, 상호작용성—은 영상치료 기제의 구현 방식을 변화시킬 잠재력을 지닌다. 다만 생성 결과는 학습 데이터의 통계적 패턴에 기반하므로 의도와 다른 산출과 통제의 불완전성, 편향을 내포한다는 본질적 한계도 함께 지닌다[5].

AI 영상치유는 디지털 정신건강 흐름의 일부이다. 176편의 무작위통제연구(RCT)를 종합한 메타분석은 정신건강 앱이 우울·불안 증상 완화에 유의한 효과가 있음을 보고하였고[17], 92편의 RCT 분석도 디지털 개입의 임상적 효과를 확인하였으며[18], 생성형 AI 챗봇을 다룬 메타분석은 일정한 효과 가능성을 시사한다[19]. 다만 생성형 AI 기반 도구의 임상적 검증은 아직 초기 단계에 머물러 있다[16].

## 3. 연구 방법

### 3.1 연구 설계

본 연구는 이론적 문헌고찰(theoretical literature review)을 연구 설계로 채택한다. 이는 새로운 실증 자료를 수집·검증하는 대신, 기존의 이론과 경험적 근거를 비판적으로 종합하여 개념적 분석틀을 구성하고 이를 특정 현상에 적용하는 방법으로, 실증연구가 아직 축적되지 않은 신생 영역의 쟁점을 선제적으로 규명하는 데 적합하다. 따라서 본 연구의 결론은 단정적 효과 평가가 아니라, 후속 실증연구를 위한 가설과 설계 원리의 성격을 갖는다.

### 3.2 자료 검색 및 선정

문헌은 국외의 PubMed·PsycINFO·Google Scholar와 국내의 KISS·RISS를 대상으로 수집하였다. 검색어는 '영상치료/video therapy', '영화치료/cinema therapy', '치료 기제/therapeutic mechanism', '치료적 동맹/therapeutic alliance', '생성형 AI/generative AI', '텍스트-투-비디오/text-to-video' 등을 조합하였다. 선정 기준은 (1) 영상·영화치료의 이론·기제·효과를 다룬 문헌, (2) 심리치료 공통요인·치료 기제에 관한 문헌, (3) 생성형 AI·디지털 정신건강 개입을 다룬 문헌으로 하였으며, 이론적 정박을 위해 해당 분야의 고전·1차 문헌을 우선 포함하였다.

### 3.3 분석틀

본 연구는 영상치료의 여섯 가지 핵심 기제—동일시·투사, 정서적 정화[8], 보편성[8], 관찰학습[9], 정서 조절, 치료적 대화의 매개[2,10]—를 통합하여 분석 렌즈를 구성하였다. AI 영상치유의 가능성은 각 기제를 준거로 도출하며, 가능성이 치료적 효과로 실현되기 위한 조건과 윤리적 요건은 보건의료·정신건강 AI 윤리 규범[11,12]에 정박하여 검토하였다.

## 4. 연구 결과

### 4.1 기제별 구현 가능성과 실현 조건

본 절은 2.1절의 여섯 기제를 준거로 AI 영상치유가 각 기제를 어떻게 구현·강화할 수 있는지(가능성)와 그 실현에 필요한 조건을 분석한다. 종합 결과는 Table 1과 같다.

첫째, 동일시·투사의 강화이다. AI 영상치유의 맞춤성은 동일시 기제를 강화할 잠재력이 가장 큰 지점이다. 기성 영화에서 적합한 인물을 찾던 방식과 달리, 내담자의 상황·정서를 반영한 맞춤 심상을 생성함으로써 더 정확한 투사와 동일시를 유도할 수 있다[2]. 다만 투사된 내용을 임상적으로 해석하고 통찰로 연결하는 과정이 동반되지 않으면, 동일시는 정서적 자극에 그친다.

둘째, 정서적 정화의 촉진이다. 즉시성과 반복성은 정화 기제에 유리하다. 정서적 환기가 필요한 순간에 즉시 맞춤 영상을 제공하고 반복할 수 있어, 정화의 접근성을 높인다[13]. 다만 정화는 적절한 강도에서 치료적이며, 통제되지 않은 정서 환기는 압도로 이어질 수 있으므로, 강도 조절과 정화 이후의 담아내기가 필수적이다.

셋째, 보편성 경험의 매개이다. AI는 사용자의 경험과 공명하는 맞춤 서사를 생성하여 보편성 경험을 정교하게 매개할 수 있다[8]. 다만 보편성의 치료적 힘은 실재하는 타인·집단과의 연결감에서 비롯되는 측면이 크므로, AI 생성 서사가 진정한 인간적 연결을 어느 정도 대체할 수 있는지는 검증이 필요하다.

넷째, 관찰학습의 개인화이다. AI는 특정 내담자에게 필요한 적응적 대처를 시연하는 맞춤 모델링 영상을 생성할 수 있어, 비디오 모델링의 개인화 수준을 높인다[9]. 다만 관찰이 실제 행동 변화로 이어지려면 동기 부여와 강화, 실생활 전이를 지원하는 설계가 필요하다.

다섯째, 정서 조절·안정화의 즉시 지원이다. 맞춤 이완·심상 영상을 즉시·반복 제공함으로써 정서 조절과 안정화를 자기조력(self-help) 형태로 지원할 수 있다[4]. 이 기제는 AI 영상치유가 비교적 안전하게 강화할 수 있는 영역이다. 다만 안정화가 필요한 상태인지에 대한 판단과, 위기 신호 시의 전문 연계가 전제되어야 한다.

여섯째, 대화 매개의 보조이다. 관계적 의미 처리는 AI가 가장 충족하기 어려운 지점이자, 다른 모든 가능성의 실현을 좌우하는 임계 조건이다. AI는 콘텐츠 생성을 보조할 수 있어도, 영상의 의미를 내담자와 함께 처리하는 관계적 과정을 대체하지 못한다[10,14]. 국내 상담사들도 챗봇의 기능적 유용성은 인정하면서 관계적 깊이의 한계를 지적한 바 있다[20]. 즉, 앞의 다섯 기제에서의 가능성은 모두 이 여섯 번째 기제가 인간 치료자에 의해 보완될 때 비로소 치료적 효과로 전환된다.

| 치료 기제 | AI의 구현 가능성 | 실현 조건 |
|----------|----------------|----------|
| 동일시·투사 | 맞춤 심상으로 투사 정밀화 | 투사 내용의 임상적 해석 |
| 정서적 정화 | 즉시·반복 정서 환기 | 강도 조절·정화 후 담아내기 |
| 보편성 | 공명하는 맞춤 서사 제공 | 실재적 인간 연결의 보완 |
| 관찰학습 | 맞춤 모델링 영상 생성 | 동기·강화·실생활 전이 설계 |
| 정서 조절·안정화 | 즉시·반복 이완 지원 | 상태 판단·위기 연계 |
| 대화의 매개 | 콘텐츠 생성 보조 | 치료자의 관계적 의미 처리 |

**Table 1. Mechanism-specific implementation possibilities of AI video healing and conditions for realization**

### 4.2 기제 구현을 위한 설계 원리

기제별 분석은 AI 영상치유의 가능성이 일정한 조건 아래에서만 치료적 효과로 실현됨을 보여준다. 이를 토대로 다음 네 가지 설계 원리를 제안한다. 첫째, 기제 정합적 설계(mechanism-aligned design)로서, 단지 '좋은 영상'이 아니라 특정 치료 기제(예: 동일시, 안정화)를 명시적으로 겨냥하여 콘텐츠를 설계하고 그 기제의 작동 조건(예: 정화의 강도 조절)을 시스템에 반영한다. 둘째, 치료자 매개(therapist-mediated) 통합으로서, 다섯 기제의 가능성을 실현하는 임계 조건인 관계적 의미 처리는 훈련된 임상가가 책임지고 AI는 콘텐츠 생성 도구로 역할을 분담한다. 셋째, 단계적·안전 지향 운영으로서, 정서 조절·안정화처럼 비교적 안전한 기제를 1차 자기조력 층위에 두고 강한 정서 환기가 필요한 작업은 임상적 통제 아래 수행하며 위기 신호 시 전문 연계 절차를 둔다[21]. 넷째, 윤리·안전 거버넌스 내장으로서, 데이터 보호·편향 점검·책임 구조를 시스템에 내장한다[11,12].

## 5. 논의 및 결론

본 연구는 영상치료의 여섯 가지 치료 기제를 심층 고찰하고, AI 영상치유가 각 기제를 어떻게 구현·강화할 수 있는지를 기제별로 분석하였다. 주요 결과를 논의하면 다음과 같다.

첫째, AI 영상치유는 맞춤성·즉시성·상호작용성을 통해 동일시·정화·관찰학습·정서 조절을 강화할 잠재력을 지닌다. 이는 AI 영상치유의 가능성을 막연한 기대가 아니라 기제 단위의 구체적 분석으로 전환할 수 있음을 보여준다.

둘째, 그러나 이들 가능성은 관계적 의미 처리, 임상적 통제, 윤리적 안전장치라는 조건이 충족될 때만 치료적 효과로 전환된다. 특히 다섯 기제의 가능성이 여섯 번째 기제(관계적 의미 처리)에 의해 조건 지어진다는 분석은, 가능성과 한계를 분리된 목록이 아니라 하나의 구조로 통합하여 이해하게 한다.

셋째, 이러한 분석은 임상적·정책적 함의를 갖는다. 임상적으로 AI 영상치유는 치료자를 대체하는 자율적 치료가 아니라, 특정 치료 기제를 겨냥한 콘텐츠 생성을 임상가의 통제 아래 보조하는 도구로 위치 지어져야 하며, 임상가는 어떤 기제를 어떤 강도로 언제 활용할지를 결정하는 게이트키퍼이자 의미 처리의 주체로 기능한다. 정책적으로는 효과성·안전성 검증, 데이터 보호, '치료'를 표방하는 검증되지 않은 서비스에 대한 규율이 요구된다.

결론적으로 본 연구는 AI 영상치유의 가능성을 검증된 영상치료 기제의 관점에서 구조적으로 분석할 이론적 토대와 기제 기반 설계 원리를 제공했다는 데 의의가 있다. 본 연구는 이론적 고찰에 머문다는 점, 빠르게 변화하는 기술의 특정 시점을 다룬다는 점에서 한계를 지닌다. 후속 연구를 위한 제언은 다음과 같다. 첫째, 기제별로 AI 영상치유의 효과를 검증하는 실증연구(예: 동일시·정화·안정화를 종속변인으로 한 통제 연구)가 필요하다. 둘째, 기제 정합적 설계의 구체적 구현과 그 안전성·수용성을 검증하는 연구가 요구된다. 셋째, 치료자-AI 협업 프로토콜을 개발하고 그 임상적 효과를 검증하는 연구가 필요하다.

## References

[1] J. W. Hesley, J. G. Hesley, *Rent two films and let's talk in the morning: Using popular movies in psychotherapy* (2nd ed.), Wiley, USA, 2001.

[2] E. Sacilotto, G. Salvato, F. Villa, F. Salvi, G. Bottini, "Through the looking glass: A scoping review of cinema and video therapy", *Frontiers in Psychology*, Vol.12, Article 732246, 2022. DOI: https://doi.org/10.3389/fpsyg.2021.732246

[3] E. J. Kang, S. M. Cheon, "The effect of a group cinematherapy program on the emotional regulation ability and problem behaviors of the youth at-risk", *Journal of Youth Counseling Research*, Vol.19, No.2, pp.23-46, 2011. DOI: https://doi.org/10.35151/kyci.2011.19.2.002

[4] G. A. Shin, "Effect of the cinema therapy program for middle-aged women with depression", *Journal of Digital Convergence*, Vol.16, No.10, pp.511-522, 2018. DOI: https://doi.org/10.14400/JDC.2018.16.10.511

[5] R. Sun, Y. Zhang, T. Shah, J. Sun, S. Zhang, W. Li, H. Duan, B. Wei, R. Ranjan, "From Sora what we can see: A survey of text-to-video generation", *arXiv preprint* arXiv:2405.10674, 2024. DOI: https://doi.org/10.48550/arXiv.2405.10674

[6] Y. Liu, K. Zhang, Y. Li, Z. Yan, C. Gao, R. Chen, Z. Yuan, Y. Huang, H. Sun, J. Gao, L. He, L. Sun, "Sora: A review on background, technology, limitations, and opportunities of large vision models", *arXiv preprint* arXiv:2402.17177, 2024. DOI: https://doi.org/10.48550/arXiv.2402.17177

[7] S. J. Yeo, S. H. Sohn, "Analysis of domestic trends in AI-based psychological counseling research: A scoping literature review", *Counseling Psychology Education Welfare*, Vol.12, No.5, pp.11-27, 2025. DOI: https://doi.org/10.20496/cpew.2025.12.5.11

[8] I. D. Yalom, M. Leszcz, *The theory and practice of group psychotherapy* (6th ed.), Basic Books, USA, 2020.

[9] A. Bandura, *Social learning theory*, Prentice-Hall, USA, 1977.

[10] E. S. Bordin, "The generalizability of the psychoanalytic concept of the working alliance", *Psychotherapy: Theory, Research & Practice*, Vol.16, No.3, pp.252-260, 1979. DOI: https://doi.org/10.1037/h0085885

[11] World Health Organization, *Ethics and governance of artificial intelligence for health: WHO guidance*, World Health Organization, Switzerland, 2021.

[12] American Psychological Association, *Balancing promise and risk: Ethical considerations for GenAI in mental health care*, APA Services, USA, 2025.

[13] E. B. Foa, M. J. Kozak, "Emotional processing of fear: Exposure to corrective information", *Psychological Bulletin*, Vol.99, No.1, pp.20-35, 1986. DOI: https://doi.org/10.1037/0033-2909.99.1.20

[14] P. Cuijpers, M. Reijnders, M. J. H. Huibers, "The role of common factors in psychotherapy outcomes", *Annual Review of Clinical Psychology*, Vol.15, pp.207-231, 2019. DOI: https://doi.org/10.1146/annurev-clinpsy-050718-095424

[15] C. Flückiger, A. C. Del Re, B. E. Wampold, A. O. Horvath, "The alliance in adult psychotherapy: A meta-analytic synthesis", *Psychotherapy*, Vol.55, No.4, pp.316-340, 2018. DOI: https://doi.org/10.1037/pst0000172

[16] X. Wang, Y. Zhou, G. Zhou, "The application and ethical implication of generative AI in mental health: Systematic review", *JMIR Mental Health*, Vol.12, e70610, 2025. DOI: https://doi.org/10.2196/70610

[17] J. Linardon, P. Cuijpers, P. Carlbring, M. Messer, M. Fuller-Tyszkiewicz, "Current evidence on the efficacy of mental health smartphone apps for symptoms of depression and anxiety: A meta-analysis of 176 randomized controlled trials", *World Psychiatry*, 2024.

[18] L. Valentine, J. D. X. Hinton, K. Bajaj, L. Boyd, S. O'Sullivan, R. P. Sorenson, et al., "A meta-analysis of persuasive design, engagement, and efficacy in 92 RCTs of mental health apps", *npj Digital Medicine*, Vol.8, Article 229, 2025. DOI: https://doi.org/10.1038/s41746-025-01567-5

[19] Q. Zhang, R. Zhang, Y. Xiong, Y. Sui, C. Tong, F.-H. Lin, "Generative AI mental health chatbots as therapeutic tools: Systematic review and meta-analysis of their role in reducing mental health issues", *Journal of Medical Internet Research*, Vol.27, e78238, 2025. DOI: https://doi.org/10.2196/78238

[20] G. H. Jang, Y. S. Seo, "The counselors' perceptions of psychological counseling chatbots", *Journal of Counseling Studies*, Vol.23, No.6, pp.17-48, 2022. DOI: https://doi.org/10.15703/kjc.23.6.202212.17

[21] A. Parks, E. Travers, R. Perera-Delcourt, M. Major, M. Economides, P. Mullan, "Is this chatbot safe and evidence-based? A call for the critical evaluation of generative AI mental health chatbots", *Journal of Participatory Medicine*, Vol.17, No.1, e69534, 2025. DOI: https://doi.org/10.2196/69534

## 저자소개

**저 자 명(Author Name)　　　　　[정회원]**

- 20XX년 X월 : ○○대학교 ○○학과 (학사)
- 20XX년 X월 : ○○대학교 ○○학과 (석사)
- 20XX년 X월 ~ 현재 : ○○대학교 ○○학과 (박사과정)

&lt;관심분야&gt;
디지털 정신건강, 영상치료, 생성형 AI, 상담심리
