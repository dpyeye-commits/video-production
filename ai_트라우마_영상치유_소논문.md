# 트라우마 완화를 위한 AI 영상치유 적용의 윤리적·임상적 쟁점 검토
## — 외상 치료 이론에 기반한 통합적 분석틀의 구성과 적용 —

### Ethical and Clinical Issues in Applying AI Video Healing to Trauma Relief: Constructing and Applying an Integrative Analytic Framework Grounded in Trauma Treatment Theory

<br>

**저자명**<sup>1)</sup>

<sup>1)</sup> 소속 기관, 학과 (직위) · 교신저자 이메일: ____________

<br>

*투고일: 20XX. XX. XX. ｜ 수정일: 20XX. XX. XX. ｜ 게재확정일: 20XX. XX. XX.*

---

## 국문초록

본 연구는 트라우마 완화를 목적으로 생성형 인공지능(generative AI) 기반 '영상치유'를 적용할 때 제기되는 임상적·윤리적 쟁점을, 외상 치료 이론에 정박한 통합적 분석틀을 구성하여 비판적으로 검토하는 것을 목적으로 한다. 외상 치료는 외상 기억의 신경생물학적 특성에 대한 이해를 토대로, 정서처리이론(emotional processing theory), 노출·내러티브 노출치료, 회복의 단계 모델, 치료적 동맹, 트라우마 정보 기반 치료(trauma-informed care) 등 정교한 이론적·임상적 기반 위에서 발전해 왔다. 최근 텍스트-투-비디오(text-to-video) 생성 모델의 등장으로 개인 맞춤형 외상 관련 영상을 즉시 생성하는 'AI 영상치유'가 논의되고 있으나, 트라우마는 부적절한 개입이 회복이 아닌 해(harm)로 직결되는 고위험 영역이다. 본 연구는 이론적 문헌고찰(theoretical literature review) 방법을 통해, 다섯 가지 외상 치료 이론을 분석 렌즈로 통합한 평가틀을 구성하고, 이를 적용하여 (1) 재외상화·안정화 부재·치료적 동맹의 부재·통제권 이전·근거 부족이라는 임상적 쟁점과 (2) 자율성·무해성·프라이버시·정의(편향)·책임성이라는 윤리적 쟁점을 체계적으로 분석하였다. 분석 결과, 트라우마 영역에서 AI 영상치유는 인간 임상가를 대체하는 자율적 수단이 될 수 없으며, 정서처리의 통제·안정화의 선행·관계적 담아내기·트라우마 정보 기반 안전장치가 보장되는 **치료자 매개형(therapist-mediated) 보조 도구**로서만 책임 있게 적용될 수 있음을 확인하였다. 본 연구는 트라우마 디지털 치유의 책임 있는 도입을 위한 이론적 토대와 윤리·임상 가이드라인의 방향, 그리고 후속 실증연구의 설계 지침을 제시한다.

**주제어**: AI 영상치유, 트라우마, 외상후 스트레스 장애, 재외상화, 정서처리이론, 트라우마 정보 기반 치료, 디지털 정신건강 윤리

---

## Abstract

This study aims to critically examine the clinical and ethical issues raised when generative artificial intelligence (AI)–based "video healing" is applied for trauma relief, by constructing an integrative analytic framework grounded in trauma treatment theory. Trauma treatment has developed upon sophisticated theoretical and clinical foundations—including emotional processing theory, exposure and narrative exposure therapy, stage models of recovery, the therapeutic alliance, and trauma-informed care—built upon an understanding of the neurobiological characteristics of traumatic memory. With the emergence of text-to-video generative models, "AI video healing," which instantly generates personalized trauma-related visual content, has begun to be discussed; yet trauma is a high-risk domain in which inappropriate intervention leads directly to harm rather than recovery. Using a theoretical literature review method, this study integrates five trauma treatment theories into an analytic lens and applies it to systematically analyze (1) clinical issues—retraumatization, the absence of stabilization, the absence of a therapeutic alliance, the transfer of control, and the lack of evidence—and (2) ethical issues—autonomy, non-maleficence, privacy, justice (bias), and accountability. The analysis confirms that, in the domain of trauma, AI video healing cannot serve as an autonomous means replacing human clinicians; it can be responsibly applied only as a therapist-mediated supportive tool in which the control of emotional processing, the precedence of stabilization, relational holding, and trauma-informed safeguards are guaranteed. This study provides a theoretical foundation, directions for ethical and clinical guidelines, and design guidance for future empirical research on the responsible adoption of digital trauma healing.

**Keywords**: AI video healing, trauma, posttraumatic stress disorder, retraumatization, emotional processing theory, trauma-informed care, digital mental health ethics

---

## Ⅰ. 서론

### 1. 연구의 배경

트라우마(외상)는 생명을 위협하거나 압도적인 사건에 노출된 후 개인의 정서·인지·신체·관계 전반에 깊고 지속적인 영향을 남기는 경험이며, 외상후 스트레스 장애(posttraumatic stress disorder, PTSD)를 비롯한 광범위한 정신건강 문제의 핵심 원인이 된다(van der Kolk, 2014). 외상 경험은 단순한 '나쁜 기억'에 머물지 않는다. 신경생물학적 연구는 외상 기억이 일반적인 서술 기억과 달리 파편적·감각적·비언어적 형태로 부호화되어, 시간·맥락의 통합 없이 저장되며, 사소한 단서에도 통제되지 않는 정서적 재경험을 촉발한다는 점을 보여 왔다(유정, 2015; van der Kolk, 2014). 이러한 특성 때문에 외상 치료는 다른 어떤 심리치료보다도 정교한 이론과 신중한 절차를 요구한다.

지난 수십 년간 외상 치료는 견고한 이론적·경험적 토대를 축적해 왔다. Foa와 Kozak(1986)의 정서처리이론은 공포 기억 구조를 활성화하되 교정적 정보를 함께 제공함으로써 정서를 수정하는 기제를 제시하였고, 이는 노출치료와 지속노출(prolonged exposure)의 이론적 기반이 되었다. 내러티브 노출치료(NET)는 파편화된 외상 기억을 일관된 자전적 서사로 통합하는 접근으로 그 효과가 보고되었으며(Adenauer et al., 2011), 최근에는 가상현실 노출치료(VRET)처럼 기술을 매개로 외상 장면을 통제된 방식으로 재현하는 접근도 메타분석 수준의 근거를 축적하였다(Kothgassner et al., 2019). 한편 Herman(1992)은 회복이 안전(safety)·기억과 애도(remembrance and mourning)·재연결(reconnection)이라는 단계를 거친다는 점을, Bordin(1979)은 치료 성과가 목표·과제·유대로 구성된 작업동맹(working alliance)에 의해 매개된다는 점을 제시하였다. 이러한 임상 지혜는 SAMHSA(2014)의 트라우마 정보 기반 치료(trauma-informed care) 원칙으로 집약되었다.

2020년대에 들어 생성형 인공지능은 텍스트 프롬프트만으로 고품질 영상을 즉시 생성하는 단계에 이르렀다(Sun et al., 2024; Liu et al., 2024). 이를 활용해 개인의 외상 경험과 정서 상태에 맞춘 영상을 생성·제공하는 'AI 영상치유'가 새로운 디지털 치유 도구로 논의되기 시작했으며, 국내 상담·심리치료 분야에서도 AI 활용 연구가 꾸준히 증가하고 있다(여수진, 손승희, 2025).

### 2. 문제 제기

그러나 트라우마 영역에서 AI 영상치유의 적용은 일반적인 디지털 정신건강 도구와 질적으로 다른 위험을 내포한다. 첫째, 외상 단서의 부적절한 제시는 회복이 아니라 **재외상화(retraumatization)**, 즉 공포 기억의 재활성화와 증상 악화를 초래할 수 있다(Foa & Kozak, 1986). 둘째, 외상 작업은 반드시 안정화가 선행되어야 하는데(Herman, 1992), 자동화된 시스템은 이 단계적 절차를 보장하지 못한다. 셋째, 트라우마 회복의 핵심인 안전한 치료적 관계(Bordin, 1979)를 AI는 진정으로 제공할 수 없다. 넷째, 외상이라는 가장 민감한 개인 정보를 다루는 데 따른 윤리적 위험이 중첩된다. 실제로 규제되지 않은 생성형 AI 정신건강 도구가 취약 사용자에게 미칠 위험성은 비판적으로 제기되어 왔으며(Parks et al., 2025), 보건의료 AI의 윤리·거버넌스에 대한 국제적 우려도 커지고 있다(World Health Organization, 2021).

그럼에도 현재의 논의는 기술적 가능성에 치우쳐, 트라우마 치료 이론의 관점에서 AI 영상치유의 임상적·윤리적 타당성을 체계적으로 검토한 연구가 부족하다. 막연한 기대와 비관이 교차하는 가운데, 검증된 이론적 준거에 정박한 분석이 요청된다.

### 3. 연구 목적 및 연구 문제

본 연구의 목적은 외상 치료 이론에 정박한 통합적 분석틀을 구성하고, 이를 적용하여 트라우마 완화를 위한 AI 영상치유의 임상적·윤리적 쟁점을 비판적으로 검토함으로써, 책임 있는 도입 원칙을 도출하는 데 있다. 이를 위해 다음의 연구 문제를 설정한다.

- **연구 문제 1.** 외상 치료의 신경생물학적·이론적 기반은 무엇이며, 이를 AI 영상치유 평가에 적용할 분석틀은 어떻게 구성되는가?
- **연구 문제 2.** 구성된 분석틀에 비추어, 트라우마 영역에서 AI 영상치유 적용의 임상적 쟁점은 무엇인가?
- **연구 문제 3.** 트라우마 영역에서 AI 영상치유 적용의 윤리적 쟁점은 무엇이며, 책임 있는 적용을 위한 원칙과 후속 연구의 방향은 무엇인가?

---

## Ⅱ. 연구 방법

### 1. 연구 설계

본 연구는 이론적 문헌고찰(theoretical literature review)을 연구 설계로 채택한다. 이는 새로운 실증 자료를 수집·검증하는 대신, 기존의 이론과 경험적 근거를 비판적으로 종합하여 개념적 분석틀을 구성하고 이를 특정 현상에 적용하는 방법으로, 아직 실증연구가 축적되지 않은 신생 영역의 쟁점을 선제적으로 규명하는 데 적합하다. 본 연구는 효과 검증이 아니라 *이론 기반 쟁점 분석*을 지향하므로, 그 결론은 단정적 평가가 아니라 후속 실증연구와 가이드라인 수립을 위한 가설·원칙의 성격을 갖는다.

### 2. 문헌 검색 및 선정

문헌은 다음 절차로 수집하였다. **검색 데이터베이스**로는 국외의 PubMed·PsycINFO·Google Scholar와 국내의 KCI·RISS를 활용하였다. **검색어**는 '트라우마/trauma', 'PTSD', '노출치료/exposure therapy', '재외상화/retraumatization', '생성형 AI/generative AI', '텍스트-투-비디오/text-to-video', '디지털 정신건강 윤리/digital mental health ethics' 등을 조합하였다. **선정 기준**은 (1) 외상 치료의 이론·기제·근거를 다룬 문헌, (2) 디지털·생성형 AI 정신건강 개입의 효과·위험·윤리를 다룬 문헌, (3) 보건의료 AI 거버넌스·알고리즘 편향을 다룬 권위 있는 자료로 하였다. 이론적 정박을 위해 해당 분야의 **고전·1차 문헌**(seminal works)을 우선 포함하였으며, 신생 기술 영역의 시의성을 확보하기 위해 최근 5년 내 문헌을 함께 포함하였다.

### 3. 분석틀

본 연구는 외상 치료의 핵심 이론 다섯 가지—① 정서처리이론(Foa & Kozak, 1986), ② 회복의 단계 모델(Herman, 1992), ③ 작업동맹 이론(Bordin, 1979), ④ 외상 기억의 신경생물학(van der Kolk, 2014; 유정, 2015), ⑤ 트라우마 정보 기반 치료(SAMHSA, 2014)—을 통합하여 분석 렌즈를 구성하였다. 임상적 쟁점은 이 다섯 렌즈에 비추어 도출하고, 윤리적 쟁점은 보건의료 AI 윤리의 국제 규범(World Health Organization, 2021)과 정신건강 AI 윤리 논의(American Psychological Association, 2025)에 정박하여 분석하였다.

---

## Ⅲ. 이론적 배경

### 1. 외상 기억의 신경생물학

외상 치료의 모든 절차는 외상 기억이 '보통의 기억과 다르게 작동한다'는 인식에서 출발한다. van der Kolk(2014)에 따르면, 압도적 위협 상황에서 정서·생존을 담당하는 변연계(특히 편도체)가 과활성화되는 반면, 경험을 시간·맥락 속에 통합하고 언어화하는 해마와 전두엽의 기능은 저하된다. 그 결과 외상 기억은 일관된 서사로 부호화되지 못하고, 감각·이미지·신체감각의 파편으로 저장되어, 관련 단서에 노출될 때 '과거'가 아니라 '현재'의 위협으로 재경험된다. 유정(2015)도 외상의 정보처리가 일반 기억과 구별되는 뇌생리학적 기제를 가지며, 치료의 관건이 파편화된 외상 정보를 통합 가능한 내러티브로 전환하는 데 있음을 논한다. 이 관점은 영상이라는 강력한 감각 자극을 외상 치료에 사용할 때 왜 극도의 신중함이 요구되는지를 설명한다. 부적절한 시각 자극은 통합이 아니라 편도체의 재활성화를 촉발할 수 있기 때문이다.

### 2. 외상 치료의 기제: 정서처리이론과 노출

Foa와 Kozak(1986)의 정서처리이론은 외상 치료의 핵심 기제를 이론화한 고전이다. 이들은 공포가 자극·반응·의미에 관한 정보가 연결된 '공포 구조(fear structure)'로 기억에 표상된다고 보았다. 치료적 변화는 (1) 이 공포 구조가 충분히 **활성화**되고, 동시에 (2) 기존의 공포 예측과 불일치하는 교정적 정보(corrective information)가 통합될 때 일어난다. 즉, 외상 단서에 노출되되 '지금 여기'는 안전하다는 교정 경험이 함께 부호화되어야 둔감화가 이루어진다. 이 이론은 두 가지 임계 조건을 시사한다. 활성화가 과도하면 압도와 재외상화로, 부족하면 변화 없음으로 귀결된다는 것이다. 노출의 강도·속도·맥락에 대한 정교한 조절이 치료의 성패를 가르는 이유가 여기에 있다.

이 원리는 다양한 근거기반 치료로 구현되었다. 내러티브 노출치료(NET)는 외상 기억을 일관된 자전적 서사로 재구성하여, 환자가 외상 자극에 압도되지 않고 현재의 안전을 재평가하도록 돕는다(Adenauer et al., 2011). 가상현실 노출치료(VRET)는 외상 장면을 통제된 가상 환경에서 재현하여 현실에서 어려운 노출을 가능하게 하며, 메타분석은 VRET가 대기자 통제집단보다 우수하고 기존 치료와 대등한 효과를 보이며 중도탈락을 일부 완화함을 보고하였다(Kothgassner et al., 2019). 다만 VRET의 효과는 임상가가 노출을 설계·통제한다는 전제 위에서 성립한다는 점에 유의해야 한다.

### 3. 회복의 단계 모델

Herman(1992)은 외상으로부터의 회복이 세 단계—① 안전의 확립(safety), ② 기억과 애도(remembrance and mourning), ③ 재연결(reconnection)—를 거친다고 보았다. 특히 첫 단계인 안전과 안정화의 확립은 이후 모든 작업의 전제 조건이다. 정서 조절 능력과 안전감이 확보되지 않은 상태에서 외상 기억을 다루면, 치료가 아니라 압도와 악화를 초래한다. 이 단계 모델은 외상 치료에서 '무엇을 하느냐'만큼 '언제·어떤 순서로 하느냐'가 결정적임을 보여준다.

### 4. 치료적 동맹

심리치료 성과를 설명하는 공통요인 연구는 기법의 종류보다 치료적 관계가 성과를 더 잘 예측함을 일관되게 보고해 왔다(Cuijpers et al., 2019). Bordin(1979)은 이 관계를 목표(goals)·과제(tasks)·유대(bonds)로 구성된 작업동맹으로 개념화하고, 변화의 핵심이 동맹의 *강도*에 있다고 보았다. 다수 연구를 종합한 메타분석 역시 동맹이 치료 지향과 무관하게 성과를 예측하는 강건한 변인임을 확인하였다(Flückiger et al., 2018). 외상 치료에서 이 관계는 더욱 결정적이다. 외상은 흔히 관계 속에서 발생하므로, 안전하고 신뢰할 수 있는 관계 자체가 교정적 경험이자 회복의 매개가 된다. 영상치료에서도 영상의 효과는 치료자와의 대화·해석이라는 관계적 토대 위에서 발현된다(Sacilotto et al., 2022).

### 5. 트라우마 정보 기반 치료

SAMHSA(2014)는 위의 임상 지혜를 여섯 가지 트라우마 정보 기반 원칙—안전(safety), 신뢰성과 투명성(trustworthiness and transparency), 동료 지지(peer support), 협력과 상호성(collaboration and mutuality), 역량강화·목소리·선택(empowerment, voice, and choice), 문화·역사·성 인지(cultural, historical, and gender issues)—으로 정식화하였다. 이 원칙들은 개별 기법을 넘어, 외상 생존자를 다루는 모든 서비스가 갖추어야 할 토대를 규정한다. 본 연구는 이를 AI 영상치유의 설계·운영을 평가하는 규범적 준거로 활용한다.

### 6. 생성형 AI 영상 기술과 그 한계

AI 영상치유의 기술적 기반은 디퓨전 트랜스포머(diffusion transformer) 계열의 텍스트-투-비디오 모델로, 자연어 프롬프트로부터 고해상도 영상을 생성한다(Sun et al., 2024; Liu et al., 2024). 그러나 이 기술은 본질적 한계를 지닌다. 생성 결과는 학습 데이터의 통계적 패턴에 기반하므로 의도와 다른 산출(이른바 환각)·세부 통제의 불완전성·학습 데이터 편향을 내포하며, '왜 그런 영상을 생성했는가'에 대한 설명가능성이 낮다. 이러한 기술적 특성은 정밀한 통제와 안전이 생명인 외상 치료의 요구와 근본적으로 긴장 관계에 있다.

---

## Ⅳ. 분석틀: AI 영상치유 평가를 위한 통합 렌즈

앞의 이론들을 종합하면, 트라우마 영역에서 AI 영상치유를 평가하기 위한 통합 분석틀을 〈표 1〉과 같이 구성할 수 있다. 각 이론은 AI 영상치유가 충족해야 할 임상적 요건과, 그 요건이 위협받을 때 발생하는 위험을 식별하는 렌즈로 기능한다.

**〈표 1〉 외상 치료 이론에 기반한 AI 영상치유 평가 분석틀**

| 이론적 렌즈 | 핵심 요건 | 위협받을 때의 위험 |
|------------|----------|------------------|
| 정서처리이론(Foa & Kozak, 1986) | 활성화와 교정적 정보의 균형, 노출 강도의 정밀 조절 | 과활성화 → 재외상화 |
| 회복의 단계 모델(Herman, 1992) | 안정화의 선행, 단계적 진행 | 안정화 생략 → 압도·악화 |
| 작업동맹(Bordin, 1979) | 안전한 관계적 담아내기 | 관계 부재 → 교정 경험 상실 |
| 외상 기억 신경생물학(van der Kolk, 2014) | 통합 가능한 형태의 자극 제공 | 파편적 재활성화 → 침습 |
| 트라우마 정보 기반 치료(SAMHSA, 2014) | 안전·신뢰·선택·문화 인지 | 원칙 위반 → 2차 가해 |

이 분석틀은 다음 두 장(Ⅴ·Ⅵ)에서 임상적·윤리적 쟁점을 도출하는 준거가 된다.

---

## Ⅴ. 임상적 쟁점

### 1. 재외상화: 정서처리 통제의 실패

가장 중대한 임상적 위험이다. 정서처리이론에 따르면 둔감화는 공포 구조의 활성화와 교정적 정보의 통합이 균형을 이룰 때만 일어나며, 활성화가 과도하면 압도와 재외상화로 귀결된다(Foa & Kozak, 1986). 임상 현장에서 치료자는 내담자의 반응을 실시간으로 관찰하며 노출 강도와 속도를 미세 조정하고, '지금 여기는 안전하다'는 교정 경험을 함께 제공한다(Adenauer et al., 2011). 그러나 AI가 생성한 외상 관련 영상은 (1) 노출 강도의 정밀 조절이 어렵고, (2) 교정적 정보의 통합을 보장하지 못하며, (3) 생성의 불완전성으로 의도치 않은 외상 단서를 포함할 수 있다. 그 결과는 둔감화가 아니라 편도체의 재활성화, 즉 재외상화일 수 있다. 신경생물학적으로도 통합되지 못한 시각 자극은 외상 기억의 파편적 재경험을 촉발한다(van der Kolk, 2014). 임상적 판단 없이 작동하는 자동화 시스템에서 이 위험은 구조적으로 증폭된다.

### 2. 안정화의 부재: 단계 위반

Herman(1992)의 모델에서 안전과 안정화는 모든 외상 작업의 전제이다. 그러나 사용자가 자율적으로 접근하는 AI 영상치유는 이 단계적 순서를 보장하기 어렵다. 정서 조절 자원이 확보되지 않은 사용자가 외상 단서를 담은 영상에 노출되면, 회복이 아니라 증상 악화로 이어질 수 있다. 더욱이 '안정화 심상'을 제공한다는 적용조차, 무엇이 안정화이고 언제 다음 단계로 나아가야 하는지에 대한 임상적 판단을 결여한 채 작동한다면 그 자체로 위험하다.

### 3. 치료적 동맹의 부재: 관계적 담아내기의 상실

외상 회복의 핵심 매개인 안전한 관계(Bordin, 1979; Cuijpers et al., 2019)를 AI는 진정으로 제공하지 못한다. AI는 영상을 *생성*할 수 있어도, 외상 경험을 안전하게 담아내고 함께 의미를 처리하는 관계적 그릇(holding)이 될 수 없다. 영상치료의 효과 또한 이 관계적 토대 위에서 발현된다(Sacilotto et al., 2022). 국내 상담사들도 챗봇의 기능적 유용성은 인정하면서 관계적·정서적 깊이의 한계를 지적한 바 있다(장규현, 서영석, 2022). 관계가 곧 치료인 외상 영역에서, 관계의 부재는 단순한 한계가 아니라 본질적 결함이다.

### 4. 통제권의 이전과 위기 대응의 취약성

VRET가 임상가의 통제 아래 수행되는 것과 달리(Kothgassner et al., 2019), AI 영상치유에서는 콘텐츠 생성과 노출 조절의 통제권이 알고리즘과 사용자에게 이전된다. 이는 외상 치료에서 가장 위험한 변화이다. 또한 트라우마 내담자는 해리·자해·자살 위험 등 급성 위기를 겪을 수 있는데, AI는 위기 신호의 미묘한 맥락을 판단하고 책임 있게 개입할 임상적 역량이 결여되어 있다(Parks et al., 2025). 위기 가능성이 높은 외상 영역에서 안전장치의 부재는 치명적일 수 있다.

### 5. 효과 근거의 부족

임상가가 설계·통제하는 기술 매개 노출(VRET)은 일정한 근거를 축적했으나(Kothgassner et al., 2019), 생성형 AI 영상을 트라우마에 적용한 통제된 실증연구는 사실상 부재하다. 생성형 AI의 치료적 적용은 유망한 결과를 보고하면서도 실제 현장 배치와 안전성 보증은 제한적이라는 평가가 지배적이며(Wang et al., 2025), 챗봇 기반 개입의 효과를 종합한 메타분석조차 효과크기의 이질성과 안전성 검증의 부족을 지적한다(Zhang et al., 2025). 위험이 큰 영역일수록 근거 없는 적용은 더욱 신중해야 한다.

---

## Ⅵ. 윤리적 쟁점

본 장은 보건의료 AI 윤리의 국제 규범(World Health Organization, 2021)과 정신건강 AI 윤리 논의(American Psychological Association, 2025)에 정박하여, 트라우마 영역에 특화된 윤리적 쟁점을 분석한다.

### 1. 자율성과 충분한 동의

트라우마 내담자는 정서적으로 취약하고 판단이 위축된 상태일 수 있어, 자율적 의사결정과 충분한 설명에 근거한 동의(informed consent)가 특히 중요하다. AI 영상치유의 작동 원리·한계·재외상화 위험을 이해하지 못한 채 사용에 동의하는 것은 진정한 동의로 보기 어렵다. WHO(2021)는 인간의 자율성 보호를 보건의료 AI의 제1원칙으로 제시하며, 미국심리학회 역시 생성형 AI의 정신건강 활용에서 자율성·동의를 핵심 쟁점으로 든다(American Psychological Association, 2025).

### 2. 무해성과 해악 방지

"해를 끼치지 말라(non-maleficence)"는 의료 윤리의 근간이며, WHO(2021)는 AI의 안전성과 해악 방지를 핵심 원칙으로 규정한다. 트라우마는 부적절한 개입이 곧 해로 직결되는 영역이므로, 재외상화·위기 미대응의 위험을 통제하지 못하는 AI 영상치유의 적용은 무해성 원칙과 정면으로 충돌한다. 안전이 입증되기 전의 적용은 그 자체로 윤리적 문제이다.

### 3. 프라이버시와 민감정보 보호

트라우마 작업은 개인의 가장 깊고 고통스러운 기억과 정서 데이터를 다룬다. 이러한 민감정보가 AI 시스템에 입력·저장·학습에 활용될 경우, 유출이나 오용은 회복이 아니라 2차 피해로 이어진다. WHO(2021)와 정신건강 AI 윤리 논의(American Psychological Association, 2025; Wang et al., 2025)는 모두 프라이버시 보호와 데이터 거버넌스를 핵심 요건으로 강조하며, 외상 영역에서는 그 기준이 더욱 엄격해야 한다.

### 4. 정의와 알고리즘 편향

생성형 모델은 학습 데이터의 편향을 반영하며, 외상 경험의 표현은 문화·성별·연령에 따라 크게 다르다. 보건의료 알고리즘이 사회적 약자에게 체계적으로 불리하게 작동할 수 있음은 이미 실증적으로 드러났다(Obermeyer et al., 2019). 특정 집단의 외상 맥락을 무시한 채 생성된 영상은 부적절하거나 해로울 수 있으며, 사회적 약자의 외상을 왜곡·전형화할 위험이 있다. 이는 SAMHSA(2014)가 강조한 문화·역사·성 인지 원칙과 WHO(2021)의 포용성·형평성 원칙에 위배된다.

### 5. 책임성과 투명성

AI 영상치유가 재외상화나 위기 미대응으로 해를 끼쳤을 때, 그 책임이 개발자·서비스 제공자·임상가·사용자 중 누구에게 있는지가 모호하다. 생성 모델의 낮은 설명가능성은 이 책임 공백을 심화시킨다. WHO(2021)는 책임성(accountability)과 설명가능성(explainability), 투명성을 핵심 원칙으로 제시하며, 인간 임상가를 값싼 자동화로 대체하려는 경향은 책임 구조를 더욱 불분명하게 만든다(American Psychological Association, 2025). 트라우마처럼 해의 위험이 큰 영역에서 책임 구조의 불분명함은 중대한 윤리적 결함이다.

### 6. 임상적·윤리적 쟁점의 종합

이상의 분석을 종합하면 〈표 2〉와 같다.

**〈표 2〉 트라우마 영역 AI 영상치유 적용의 임상적·윤리적 쟁점**

| 구분 | 쟁점 | 이론적 준거 | 핵심 위험 |
|------|------|-----------|----------|
| 임상 | 재외상화 | 정서처리이론 | 과활성화·교정정보 부재 |
| 임상 | 안정화 부재 | 회복 단계 모델 | 단계 위반·압도 |
| 임상 | 치료적 동맹 부재 | 작업동맹 이론 | 관계적 담아내기 상실 |
| 임상 | 통제권 이전·위기 | VRET 통제 원리 | 노출 조절 실패·위기 미대응 |
| 임상 | 근거 부족 | 근거기반 실천 | 검증되지 않은 적용 |
| 윤리 | 자율성·동의 | WHO 자율성 원칙 | 취약 상태의 비충분 동의 |
| 윤리 | 무해성 | WHO 안전 원칙 | 재외상화로 인한 해 |
| 윤리 | 프라이버시 | WHO·데이터 거버넌스 | 외상 민감정보 2차 피해 |
| 윤리 | 정의·편향 | WHO 형평성·TIC 문화 인지 | 외상 표현의 왜곡·전형화 |
| 윤리 | 책임성·투명성 | WHO 책임성 원칙 | 해 발생 시 책임 불분명 |

---

## Ⅶ. 논의

### 1. 통합 모델: 치료자 매개형 + 트라우마 정보 기반 설계

쟁점 분석의 결과는 트라우마 영역에서 AI 영상치유가 인간 임상가를 **대체**하는 자율적 수단이 되어서는 안 되며, 엄격한 안전 구조 아래 **보조 도구**로만 적용되어야 함을 시사한다. 본 연구는 다음 다섯 가지 원칙으로 구성된 통합 모델을 제안한다.

1. **트라우마 정보 기반 설계(trauma-informed by design)**: SAMHSA(2014)의 여섯 원칙을 시스템 설계에 내장하고, 안정화가 선행되지 않은 노출 콘텐츠 생성을 구조적으로 차단한다.
2. **치료자 매개(therapist-mediated) 통제**: 노출 강도·시점의 통제, 반응 관찰, 의미 처리, 단계 판단은 반드시 훈련된 임상가가 책임진다. AI는 안정화 심상이나 보조 자료의 생성에 한정하여, VRET가 임상가 통제 아래 수행되는 모델(Kothgassner et al., 2019)을 준용한다.
3. **위기 대응 안전장치 내장**: 자살·자해·해리 등 위기 신호 탐지 시 즉시 전문 인력·기관으로 연계하는 절차를 필수 요소로 둔다(Parks et al., 2025).
4. **데이터·동의·편향 거버넌스**: 외상 민감정보의 최소 수집·보호, 충분한 설명에 근거한 동의, 문화적 편향 점검을 표준화한다(World Health Organization, 2021; Obermeyer et al., 2019).
5. **근거 기반 검증 의무**: 트라우마 적용 전 통제된 설계의 효과성·안전성 검증을 선행하고, 검증되지 않은 자율적 치유 주장을 경계한다(Wang et al., 2025).

### 2. 이론적 함의

본 연구의 이론적 기여는 두 가지이다. 첫째, 산재한 외상 치료 이론을 신생 기술 평가를 위한 통합 분석틀로 재구성하였다. 이 틀은 AI 영상치유뿐 아니라 향후 등장할 다양한 디지털 외상 개입을 평가하는 데 확장 적용될 수 있다. 둘째, '기술이 무엇을 할 수 있는가'가 아니라 '치료 이론이 무엇을 요구하는가'에서 출발함으로써, 기술 결정론적 논의를 이론 기반 논의로 전환하는 관점을 제시하였다.

### 3. 임상적 함의

임상 현장에 대한 함의는 명확하다. AI 영상치유는 임상가를 대체하는 자율적 치료가 아니라, 임상가의 통제 아래 안정화·심리교육·자원 강화를 보조하는 도구로 위치 지어져야 한다. 임상가는 도구의 한계와 재외상화 위험을 숙지하고, 사용 여부·시점·강도에 대한 임상적 게이트키퍼로 기능해야 한다.

### 4. 정책적 함의

정책적으로는, 트라우마처럼 위험이 큰 영역에 특화된 별도의 규제·인증 체계가 요구된다. WHO(2021)의 일반 원칙을 외상 영역에 구체화하여, 안전성 검증·위기 대응·데이터 보호·편향 점검을 의무화하는 가이드라인과, '치료'를 표방하는 검증되지 않은 서비스에 대한 규율이 필요하다.

---

## Ⅷ. 결론 및 제언

본 연구는 외상 치료 이론에 정박한 통합 분석틀을 구성하고, 이를 적용하여 트라우마 완화를 위한 AI 영상치유의 임상적·윤리적 쟁점을 검토하였다. 임상적으로는 재외상화, 안정화 부재, 치료적 동맹의 부재, 통제권 이전과 위기 대응 취약성, 근거 부족이, 윤리적으로는 자율성·동의, 무해성, 프라이버시, 정의(편향), 책임성이 핵심 쟁점으로 도출되었다. 트라우마는 부적절한 개입이 회복이 아닌 해로 직결되는 고위험 영역이므로, AI 영상치유는 트라우마 정보 기반 원칙과 안전장치를 갖춘 **치료자 매개형 보조 도구**로만 책임 있게 적용되어야 한다.

본 연구는 이론적 고찰에 머문다는 점, 빠르게 변화하는 기술의 특정 시점을 다룬다는 점에서 한계를 지닌다. 후속 연구를 위한 제언은 다음과 같다. 첫째, **안전성 우선의 실증연구**로서, 재외상화 위험을 통제한 설계(예: 임상가 입회하의 소표본 사전-사후 연구, 위해 모니터링을 내장한 단계적 시험) 아래 효과성과 부작용을 검증할 것을 제안한다. 둘째, **트라우마 특화 윤리·임상 가이드라인**을 개발하여 동의·데이터 보호·위기 대응·편향 점검의 표준을 수립할 것을 제안한다. 셋째, **치료자-AI 협업 프로토콜**을 개발하고, 임상가 통제 아래 AI를 활용하는 구체적 절차의 안전성과 수용성을 검증할 것을 제안한다.

본 연구는 트라우마라는 고위험 영역에서 빠르게 확산되는 디지털 치유 기술을, 검증된 치료 이론의 관점에서 비판적으로 성찰할 이론적 토대와 분석틀을 제공했다는 데 의의가 있다.

---

## 참고문헌 (References)

> *APA 7판 형식. 국내 문헌은 가나다순, 국외 문헌은 알파벳순으로 정렬하였다. 실제 제출 시 둘째 줄 들여쓰기(hanging indent)를 적용할 것.*

### 국내 문헌

여수진, 손승희 (2025). AI 기반 심리상담 연구의 국내 동향 분석: 주제범위 문헌고찰을 중심으로. *상담심리교육복지, 12*(5), 11–27. https://doi.org/10.20496/cpew.2025.12.5.11

유정 (2015). 심리적 트라우마의 정보처리: 뇌생리학적 근거와 트라우마 내러티브. *인간·환경·미래, 14*, 29–65. https://doi.org/10.34162/hefins.2015..14.002

장규현, 서영석 (2022). 심리상담 챗봇에 대한 상담사들의 인식. *상담학연구, 23*(6), 17–48. https://doi.org/10.15703/kjc.23.6.202212.17

최수미 (2015). 외상 사건 후 PTSD 예방을 위한 치료적 개입 및 모델의 동향분석. *상담학연구, 16*(3), 537–556.

### 국외 문헌

Adenauer, H., Catani, C., Gola, H., Keil, J., Ruf, M., Schauer, M., & Neuner, F. (2011). Narrative exposure therapy for PTSD increases top-down processing of aversive stimuli: Evidence from a randomized controlled treatment trial. *BMC Neuroscience, 12*, Article 127. https://doi.org/10.1186/1471-2202-12-127

American Psychological Association. (2025). *Balancing promise and risk: Ethical considerations for GenAI in mental health care.* APA Services. https://www.apaservices.org/practice/ce/expert/ethical-genai-mental-health-care

Bordin, E. S. (1979). The generalizability of the psychoanalytic concept of the working alliance. *Psychotherapy: Theory, Research & Practice, 16*(3), 252–260. https://doi.org/10.1037/h0085885

Cuijpers, P., Reijnders, M., & Huibers, M. J. H. (2019). The role of common factors in psychotherapy outcomes. *Annual Review of Clinical Psychology, 15*, 207–231. https://doi.org/10.1146/annurev-clinpsy-050718-095424

Flückiger, C., Del Re, A. C., Wampold, B. E., & Horvath, A. O. (2018). The alliance in adult psychotherapy: A meta-analytic synthesis. *Psychotherapy, 55*(4), 316–340. https://doi.org/10.1037/pst0000172

Foa, E. B., & Kozak, M. J. (1986). Emotional processing of fear: Exposure to corrective information. *Psychological Bulletin, 99*(1), 20–35. https://doi.org/10.1037/0033-2909.99.1.20

Herman, J. L. (1992). *Trauma and recovery: The aftermath of violence—from domestic abuse to political terror.* Basic Books.

Kothgassner, O. D., Goreis, A., Kafka, J. X., Van Eickels, R. L., Plener, P. L., & Felnhofer, A. (2019). Virtual reality exposure therapy for posttraumatic stress disorder (PTSD): A meta-analysis. *European Journal of Psychotraumatology, 10*(1), Article 1654782. https://doi.org/10.1080/20008198.2019.1654782

Liu, Y., Zhang, K., Li, Y., Yan, Z., Gao, C., Chen, R., Yuan, Z., Huang, Y., Sun, H., Gao, J., He, L., & Sun, L. (2024). *Sora: A review on background, technology, limitations, and opportunities of large vision models* [Preprint]. arXiv. https://doi.org/10.48550/arXiv.2402.17177

Obermeyer, Z., Powers, B., Vogeli, C., & Mullainathan, S. (2019). Dissecting racial bias in an algorithm used to manage the health of populations. *Science, 366*(6464), 447–453. https://doi.org/10.1126/science.aax2342

Parks, A., Travers, E., Perera-Delcourt, R., Major, M., Economides, M., & Mullan, P. (2025). Is this chatbot safe and evidence-based? A call for the critical evaluation of generative AI mental health chatbots. *Journal of Participatory Medicine, 17*(1), e69534. https://doi.org/10.2196/69534

Sacilotto, E., Salvato, G., Villa, F., Salvi, F., & Bottini, G. (2022). Through the looking glass: A scoping review of cinema and video therapy. *Frontiers in Psychology, 12*, Article 732246. https://doi.org/10.3389/fpsyg.2021.732246

Sun, R., Zhang, Y., Shah, T., Sun, J., Zhang, S., Li, W., Duan, H., Wei, B., & Ranjan, R. (2024). *From Sora what we can see: A survey of text-to-video generation* [Preprint]. arXiv. https://doi.org/10.48550/arXiv.2405.10674

Substance Abuse and Mental Health Services Administration. (2014). *SAMHSA's concept of trauma and guidance for a trauma-informed approach* (HHS Publication No. SMA 14-4884). SAMHSA.

van der Kolk, B. A. (2014). *The body keeps the score: Brain, mind, and body in the healing of trauma.* Viking.

Wang, X., Zhou, Y., & Zhou, G. (2025). The application and ethical implication of generative AI in mental health: Systematic review. *JMIR Mental Health, 12*, e70610. https://doi.org/10.2196/70610

World Health Organization. (2021). *Ethics and governance of artificial intelligence for health: WHO guidance.* World Health Organization. https://www.who.int/publications/i/item/9789240029200

Zhang, Q., Zhang, R., Xiong, Y., Sui, Y., Tong, C., & Lin, F.-H. (2025). Generative AI mental health chatbots as therapeutic tools: Systematic review and meta-analysis of their role in reducing mental health issues. *Journal of Medical Internet Research, 27*, e78238. https://doi.org/10.2196/78238
