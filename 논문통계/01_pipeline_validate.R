# 박사 논문 통계 파이프라인 — 5가설 분석 엔진 (시뮬레이션 검증본)
# 주제: 레거시 미디어 vs 생성형 AI 미디어의 심리치유 효과 비교 (순차적 설명 혼합연구)
# 가설: H1 시기주효과 / H2 집단×시기 / H3 ANCOVA / H4 이중매개(진정성·현존감) / H5 다집단SEM
# 데이터 도착 시 §0의 simulate() 대신 read.csv("data/cleaned/quan-cleaned.csv")로 교체.
# 영상사령관 · 2026-05-24

suppressPackageStartupMessages({
  library(afex); library(emmeans); library(car)
  library(lavaan); library(semTools); library(psych); library(effectsize)
})
set.seed(20260524)
sep <- function(t) cat("\n", strrep("=", 64), "\n", t, "\n", strrep("=", 64), "\n", sep = "")

# ── §0. 데이터 (시뮬레이션 — 설계 반영: N=200, 2집단×사전/사후 + 매개·공변량) ──
N <- 200
group <- rep(c(0, 1), each = N / 2)                       # 0=레거시, 1=AI
trust_pre <- round(pmin(pmax(4 + rnorm(N, 0, 1), 1), 7), 2)  # 공변량: 사전 미디어 신뢰도

# 잠재변수: AI는 진정성↓·현존감↑ → 치유효과는 둘의 함수
auth_lat <- 0.4 - 0.7 * group + rnorm(N, 0, .8)           # 진정성 지각
pres_lat <- 0.0 + 0.6 * group + rnorm(N, 0, .8)           # 현존감
heal_lat <- 0.45 * auth_lat + 0.50 * pres_lat + rnorm(N, 0, .7)  # 치유효과

mk <- function(lat, load = c(1, .9, .8)) {               # 3지표 측정모형 생성
  m <- sapply(load, function(l) 4 + l * lat + rnorm(length(lat), 0, .6))
  round(pmin(pmax(m, 1), 7), 2)
}
A <- mk(auth_lat); P <- mk(pres_lat); H <- mk(heal_lat)
colnames(A) <- paste0("au", 1:3); colnames(P) <- paste0("pr", 1:3); colnames(H) <- paste0("he", 1:3)

att_pre  <- round(pmin(pmax(3.2 + .3 * trust_pre + rnorm(N, 0, .8), 1), 7), 2)
att_post <- round(pmin(pmax(att_pre + .5 + .6 * group + rnorm(N, 0, .7), 1), 7), 2)  # 시기효과+상호작용

d <- data.frame(id = factor(1:N), group = factor(group, labels = c("레거시", "AI")),
                trust_pre, att_pre, att_post, A, P, H)
d$auth <- rowMeans(A); d$pres <- rowMeans(P); d$heal <- rowMeans(H)
cat("데이터 준비 완료: N =", nrow(d), "| 집단:", paste(levels(d$group), collapse = "/"), "\n")

# ── 횡단: 신뢰도 (Cronbach α / McDonald ω) ──
sep("[횡단] 척도 신뢰도 (psych::alpha)")
for (nm in c("au", "pr", "he")) {
  a <- psych::alpha(d[, paste0(nm, 1:3)], warnings = FALSE)$total$raw_alpha
  cat(sprintf("  %s 척도  Cronbach α = %.3f\n", nm, a))
}

# ── H1·H2: 혼합 ANOVA (집단 between × 시기 within) ──
sep("[H1·H2] 혼합 ANOVA — 시기 주효과 & 집단×시기 상호작용")
long <- reshape(d[, c("id", "group", "att_pre", "att_post")],
                varying = c("att_pre", "att_post"), v.names = "attitude",
                timevar = "time", times = c("pre", "post"), direction = "long")
long$time <- factor(long$time, levels = c("pre", "post"))
aov_fit <- aov_ez("id", "attitude", long, between = "group", within = "time")
print(aov_fit)
cat("\n[H2 단순주효과] 집단별 시기 효과:\n")
print(emmeans(aov_fit, ~ time | group) |> pairs())

# ── H3: ANCOVA (사전 신뢰도 통제 후 집단 차이) ──
sep("[H3] ANCOVA — 사전 신뢰도 통제 후 사후 집단 차이")
cat("회귀 동일성 가정 검증 (group×trust_pre 상호작용 비유의여야 함):\n")
print(Anova(lm(att_post ~ group * trust_pre, d), type = 3)["group:trust_pre", , drop = FALSE])
anc <- lm(att_post ~ trust_pre + group, d)
print(Anova(anc, type = 3))
cat(sprintf("  효과크기 partial η² (group) = %.3f\n", eta_squared(anc, partial = TRUE)$Eta2_partial[2]))

# ── H4: 병렬 이중매개 (미디어 → 진정성·현존감 → 치유), Bootstrap 95%% BC CI ──
sep("[H4] 병렬 이중매개 (lavaan, Bootstrap 1,000 · BC CI)")
d$grp <- as.numeric(d$group) - 1
med <- '
  auth ~ a1*grp
  pres ~ a2*grp
  heal ~ b1*auth + b2*pres + cp*grp
  ind_auth := a1*b1
  ind_pres := a2*b2
  total    := cp + a1*b1 + a2*b2
'
medfit <- sem(med, data = d, se = "bootstrap", bootstrap = 1000)
print(parameterEstimates(medfit, boot.ci.type = "bca.simple")[
  , c("lhs", "op", "rhs", "label", "est", "se", "ci.lower", "ci.upper", "pvalue")], digits = 3)

# ── H5: 다집단 CFA 측정 동일성 (configural → metric → scalar) ──
sep("[H5] 다집단 CFA 측정 동일성 (semTools)")
cfa_m <- 'fAuth =~ au1+au2+au3
          fPres =~ pr1+pr2+pr3
          fHeal =~ he1+he2+he3'
cfg <- cfa(cfa_m, d, group = "group")
met <- cfa(cfa_m, d, group = "group", group.equal = "loadings")
sca <- cfa(cfa_m, d, group = "group", group.equal = c("loadings", "intercepts"))
print(compareFit(cfg, met, sca)@nested)
cat("\n적합도 (configural):\n")
print(round(fitMeasures(cfg, c("cfi", "tli", "rmsea", "srmr")), 3))

sep("파이프라인 검증 완료 — 5가설 전 분석 정상 실행")
cat("데이터 도착 시 §0를 read.csv()로 교체하면 동일 코드로 실제 분석 가동.\n")
