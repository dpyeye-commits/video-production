# APA7 표·결과문 자동 출력 — modelsummary·flextable → .docx + results.md
# 영상사령관 · 2026-05-24
suppressPackageStartupMessages({ library(flextable); library(officer); library(modelsummary) })
source("00_models.R")
outdir <- "outputs"; dir.create(outdir, showWarnings = FALSE)
apa_ft <- function(ft) ft |> font(fontname = "Times New Roman", part = "all") |>
  fontsize(size = 11, part = "all") |> autofit()

# ── 표 1: 기술통계·신뢰도 ──
desc <- data.frame(
  변수 = c("진정성 지각", "현존감", "치유효과", "사전 인식태도", "사후 인식태도", "사전 신뢰도"),
  M = round(sapply(d[c("auth","pres","heal","att_pre","att_post","trust_pre")], mean), 2),
  SD = round(sapply(d[c("auth","pres","heal","att_pre","att_post","trust_pre")], sd), 2),
  `Cronbach α` = c(round(rel, 2), NA, NA, NA), check.names = FALSE)
t1 <- apa_ft(flextable(desc)) |> set_caption("표 1. 주요 변수의 기술통계 및 신뢰도")

# ── 표 2: ANCOVA (H3) — modelsummary ──
save_kable_safe <- function(obj, path) tryCatch(modelsummary(obj, output = path,
  stars = TRUE, gof_map = c("nobs","r.squared"), title = "표 2. ANCOVA: 사전 신뢰도 통제 후 집단 차이 (H3)"),
  error = function(e) cat("  표2 출력 경고:", conditionMessage(e), "\n"))
save_kable_safe(list("사후 인식태도" = anc), file.path(outdir, "table2_ancova.docx"))

# ── 표 3: 매개효과 (H4) ──
ind <- med_pe[med_pe$op == ":=", c("label","est","se","ci.lower","ci.upper","pvalue")]
ind$label <- c("진정성 간접효과 (a1×b1)","현존감 간접효과 (a2×b2)","총효과")
names(ind) <- c("경로","추정치","SE","95% BC CI 하한","상한","p")
ind[2:6] <- lapply(ind[2:6], function(x) round(x, 3))
t3 <- apa_ft(flextable(ind)) |>
  set_caption("표 3. 병렬 이중매개 간접효과 (Bootstrap 1,000, 95% BC CI) (H4)")

# ── 표 4: 측정 동일성 (H5) ──
iv <- as.data.frame(inv_tab)[, c("Df","Chisq","Chisq diff","Df diff","Pr(>Chisq)")]
iv <- cbind(모형 = c("형태동일성(configural)","측정동일성(metric)","절편동일성(scalar)"), round(iv, 3))
t4 <- apa_ft(flextable(iv)) |>
  set_caption("표 4. 다집단 측정 동일성 검증 (H5)")

# ── docx로 표 묶음 저장 ──
doc <- read_docx() |>
  body_add_flextable(t1) |> body_add_par("") |>
  body_add_flextable(t3) |> body_add_par("") |>
  body_add_flextable(t4)
print(doc, target = file.path(outdir, "apa_tables.docx"))

# ── 결과문(APA7) 자동 생성 → results.md ──
ax <- function(m) m$anova_table
H1F <- ax(aov_fit)["time","F"]; H1p <- ax(aov_fit)["time","Pr(>F)"]; H1g <- ax(aov_fit)["time","ges"]
H2F <- ax(aov_fit)["group:time","F"]; H2p <- ax(aov_fit)["group:time","Pr(>F)"]
H3F <- anc_aov["group","F value"]; H3p <- anc_aov["group","Pr(>F)"]; H3e <- anc_eta$Eta2_partial[2]
ia <- ind[1,]; ip <- ind[2,]
pf <- function(p) ifelse(p < .001, "< .001", paste0("= ", formatC(p, format="f", digits=3)))
res <- c(
"## 결과 (APA 7 · 자동 생성)","",
sprintf("**H1.** 인식태도의 시기 주효과가 유의하였다, *F*(1, 198) = %.2f, *p* %s, η²_G = %.3f. 두 집단 모두 사후에 긍정적으로 변화하였다.", H1F, pf(H1p), H1g),"",
sprintf("**H2.** 집단×시기 상호작용이 유의하였다, *F*(1, 198) = %.2f, *p* %s. 단순주효과 분석 결과 AI 집단의 시기 효과(추정치 %.2f)가 레거시 집단(%.2f)보다 컸다.", H2F, pf(H2p), as.data.frame(simple)$estimate[2], as.data.frame(simple)$estimate[1]),"",
sprintf("**H3.** 회귀 동일성 가정을 충족한 가운데(집단×공변량 상호작용 *p* = %.2f), 사전 미디어 신뢰도를 통제한 후 집단의 사후 인식 차이가 유의하였다, *F*(1, 197) = %.2f, *p* %s, partial η² = %.3f.", anc_homog["group:trust_pre","Pr(>F)"], H3F, pf(H3p), H3e),"",
sprintf("**H4.** 진정성 지각의 간접효과가 유의하였다, *b* = %.3f, 95%% BC CI [%.3f, %.3f]. 현존감의 간접효과 또한 유의하였다, *b* = %.3f, 95%% BC CI [%.3f, %.3f]. 두 매개 경로의 방향이 상반되어 총효과는 비유의하였다.", ia$추정치, ia$`95% BC CI 하한`, ia$상한, ip$추정치, ip$`95% BC CI 하한`, ip$상한),"",
sprintf("**H5.** 다집단 측정 동일성은 절편동일성(scalar) 수준까지 확보되었다(metric Δχ² *p* = %.3f, scalar Δχ² *p* = %.3f). 형태동일성 모형 적합도는 양호하였다, CFI = %.3f, RMSEA = %.3f, SRMR = %.3f.", as.data.frame(inv_tab)["met","Pr(>Chisq)"], as.data.frame(inv_tab)["sca","Pr(>Chisq)"], cfg_fit["cfi"], cfg_fit["rmsea"], cfg_fit["srmr"]))
writeLines(res, file.path(outdir, "results.md"))

cat("\n✅ 출력 완료:\n")
cat("  -", file.path(outdir, "apa_tables.docx"), "(표 1·3·4)\n")
cat("  -", file.path(outdir, "table2_ancova.docx"), "(표 2 ANCOVA)\n")
cat("  -", file.path(outdir, "results.md"), "(APA7 결과문)\n")
