library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = cut, y = price, fill = cut)) +
  geom_violin(alpha = 0.8, color = NA) +
  geom_boxplot(width = 0.12, fill = "white", outlier.alpha = 0.15) +
  scale_fill_viridis_d(option = "C", guide = "none") +
  scale_y_log10(labels = scales::dollar) +
  labs(
    title = "Diamond prices across cut grades",
    subtitle = "Price distributions shown on a logarithmic scale",
    x = "Cut",
    y = "Price"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold"),
    panel.grid.minor = element_blank()
  )

ggsave("diamonds-2.png", plot = diamonds_plot, width = 9, height = 6, dpi = 300)
