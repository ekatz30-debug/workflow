result <- sum(1:10)
print(result)

library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point(alpha = 0.35, size = 0.8) +
  scale_color_viridis_d(option = "C") +
  scale_y_continuous(labels = scales::dollar) +
  labs(
    title = "Diamond prices by carat and cut",
    subtitle = "Each point represents a diamond in ggplot2's diamonds data",
    x = "Carat",
    y = "Price",
    color = "Cut"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold"),
    legend.position = "bottom",
    panel.grid.minor = element_blank()
  )

ggsave("diamonds-1.png", plot = diamonds_plot, width = 9, height = 6, dpi = 300)
