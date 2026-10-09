# Figure 1: Relative likelihood of extreme fire weather
# Values summarised from van Oldenborgh et al. (2021)

climate <- c(
  "Early 20th-century\nbaseline",
  "Present climate",
  "2°C warmer\nscenario"
)

relative_likelihood <- c(1, 1.8, 8)

# Save the figure in the blog post folder
png(
  filename = "posts/welcome/figure1.png",
  width = 1200,
  height = 750,
  res = 140
)

par(mar = c(6, 5, 4, 2) + 0.1)

bar_positions <- barplot(
  relative_likelihood,
  names.arg = climate,
  col = c("#8DA0CB", "#66C2A5", "#FC8D62"),
  ylim = c(0, 9),
  ylab = "Relative likelihood (baseline = 1)",
  main = "Extreme Fire-Weather Risk Across Climate Scenarios",
  cex.names = 1,
  cex.lab = 1.1,
  cex.main = 1.2
)

text(
  x = bar_positions,
  y = relative_likelihood,
  labels = c("1×", "1.8×", "8×"),
  pos = 3,
  cex = 1.1
)

dev.off()

