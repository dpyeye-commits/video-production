# 표본 크기 산정 — H5 다집단 SEM (semPower, RMSEA 기반 a-priori)
# 영상사령관 · 2026-05-24
suppressPackageStartupMessages({ library(semPower); library(lavaan) })
source("00_models.R")
sep <- function(t) cat("\n", strrep("=",60), "\n", t, "\n", strrep("=",60), "\n", sep="")

DF  <- as.numeric(fitMeasures(cfg, "df"))            # 다집단 CFA 모형 자유도
DFd <- as.numeric(fitMeasures(sca,"df") - fitMeasures(met,"df"))  # scalar vs metric 자유도 차
cat("다집단 CFA 자유도 df =", DF, " | scalar−metric Δdf =", DFd, " | 집단 수 = 2\n")

# ── (1) 모형 적합도 검정의 필요 표본 (exact-fit, H0: RMSEA=0) ──
sep("[H5-a] 다집단 측정모형 적합도 검정 — 필요 표본")
for (rm in c(.05, .08)) for (pw in c(.80, .90)) {
  ap <- semPower.aPriori(effect = rm, effect.measure = "RMSEA",
                         alpha = .05, power = pw, df = DF, nGroups = 2)
  cat(sprintf("  탐지 RMSEA=%.2f, 검정력 %.0f%%  →  총 N = %d (집단당 %d)\n",
              rm, pw*100, ap$requiredN, ceiling(ap$requiredN/2)))
}

# ── (2) 측정 동일성(불변성) 검정의 필요 표본 (ΔRMSEA 기반 nested 비교) ──
sep("[H5-b] 측정 동일성(scalar) 위반 탐지 — 필요 표본 (ΔRMSEA = .01/.02)")
for (dr in c(.01, .02)) {
  ap <- tryCatch(
    semPower.aPriori(effect = dr, effect.measure = "RMSEA",
                     alpha = .05, power = .80, df = DFd, nGroups = 2),
    error = function(e) NULL)
  if (!is.null(ap))
    cat(sprintf("  ΔRMSEA %.2f, 검정력 80%%  →  총 N = %d\n", dr, ap$requiredN))
}

# ── (3) 사후 검정력 (현재 N=200에서) ──
sep("[참고] 현재 N=200에서의 사후 검정력 (적합도 검정)")
for (rm in c(.05,.08)) {
  ph <- semPower.postHoc(effect = rm, effect.measure="RMSEA",
                         alpha=.05, N=200, df=DF, nGroups=2)
  cat(sprintf("  N=200, 탐지 RMSEA=%.2f  →  검정력 = %.3f\n", rm, ph$power))
}

sep("권고")
cat("• SEM 경험칙: 최소 N≥200, 모수당 10명 이상.\n",
    "• 위 (1)·(2)의 최댓값을 충족하는 표본을 확보하면 H5가 적정 검정력을 갖는다.\n",
    "• 매개(H4)·상호작용(H2)도 함께 고려해 최종 표본은 가설별 요구 N의 최댓값으로 결정.\n", sep="")
