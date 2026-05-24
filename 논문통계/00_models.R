# 공유 모델 적합 스크립트 — 데이터 생성 + 5가설 모델 객체 (출력 없음)
# 02_apa_report.R 와 manuscript.Rmd 가 source() 하여 재사용.
# 영상사령관 · 2026-05-24

suppressPackageStartupMessages({
  library(afex); library(emmeans); library(car)
  library(lavaan); library(semTools); library(psych); library(effectsize)
})
set.seed(20260524)

# ── 데이터 (시뮬레이션 — 데이터 도착 시 read.csv 로 교체) ──
N <- 200
group <- rep(c(0, 1), each = N / 2)
trust_pre <- round(pmin(pmax(4 + rnorm(N, 0, 1), 1), 7), 2)
auth_lat <- 0.4 - 0.7 * group + rnorm(N, 0, .8)
pres_lat <- 0.0 + 0.6 * group + rnorm(N, 0, .8)
heal_lat <- 0.45 * auth_lat + 0.50 * pres_lat + rnorm(N, 0, .7)
mk <- function(lat, load = c(1, .9, .8)) {
  m <- sapply(load, function(l) 4 + l * lat + rnorm(length(lat), 0, .6))
  round(pmin(pmax(m, 1), 7), 2)
}
A <- mk(auth_lat); P <- mk(pres_lat); H <- mk(heal_lat)
colnames(A) <- paste0("au", 1:3); colnames(P) <- paste0("pr", 1:3); colnames(H) <- paste0("he", 1:3)
att_pre  <- round(pmin(pmax(3.2 + .3 * trust_pre + rnorm(N, 0, .8), 1), 7), 2)
att_post <- round(pmin(pmax(att_pre + .5 + .6 * group + rnorm(N, 0, .7), 1), 7), 2)
d <- data.frame(id = factor(1:N), group = factor(group, labels = c("레거시", "AI")),
                trust_pre, att_pre, att_post, A, P, H)
d$auth <- rowMeans(A); d$pres <- rowMeans(P); d$heal <- rowMeans(H)
d$grp <- as.numeric(d$group) - 1

# ── 신뢰도 ──
rel <- sapply(c("au", "pr", "he"), function(nm)
  suppressWarnings(psych::alpha(d[, paste0(nm, 1:3)], warnings = FALSE)$total$raw_alpha))

# ── H1·H2 혼합 ANOVA ──
long <- reshape(d[, c("id", "group", "att_pre", "att_post")],
                varying = c("att_pre", "att_post"), v.names = "attitude",
                timevar = "time", times = c("pre", "post"), direction = "long")
long$time <- factor(long$time, levels = c("pre", "post"))
aov_fit <- aov_ez("id", "attitude", long, between = "group", within = "time")
simple <- emmeans(aov_fit, ~ time | group) |> pairs()

# ── H3 ANCOVA ──
anc_homog <- Anova(lm(att_post ~ group * trust_pre, d), type = 3)
anc <- lm(att_post ~ trust_pre + group, d)
anc_aov <- Anova(anc, type = 3)
anc_eta <- eta_squared(anc, partial = TRUE)

# ── H4 병렬 이중매개 ──
med <- 'auth ~ a1*grp
        pres ~ a2*grp
        heal ~ b1*auth + b2*pres + cp*grp
        ind_auth := a1*b1
        ind_pres := a2*b2
        total    := cp + a1*b1 + a2*b2'
medfit <- sem(med, data = d, se = "bootstrap", bootstrap = 1000)
med_pe <- parameterEstimates(medfit, boot.ci.type = "bca.simple")

# ── H5 다집단 CFA 측정 동일성 ──
cfa_m <- 'fAuth =~ au1+au2+au3
          fPres =~ pr1+pr2+pr3
          fHeal =~ he1+he2+he3'
cfg <- cfa(cfa_m, d, group = "group")
met <- cfa(cfa_m, d, group = "group", group.equal = "loadings")
sca <- cfa(cfa_m, d, group = "group", group.equal = c("loadings", "intercepts"))
inv_tab <- compareFit(cfg, met, sca)@nested
cfg_fit <- fitMeasures(cfg, c("cfi", "tli", "rmsea", "srmr"))
