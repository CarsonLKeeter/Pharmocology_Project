df <- data %>% 
  select(
    State, 
    Percentage
    ) %>%
  filter(
    State == "Wyoming" | 
    State == "Montana" | 
    State == "Colorado"
    )

ggplot(
  df, 
  aes(
    State, 
    Percentage
    )
  ) + 
  geom_bar(
    stat = "identity", 
    data = df, 
    aes(
      x = State, 
      y = Percentage
      ), 
    color = "Blue", 
    fill = "Blue"
    ) +
  ggtitle(
    "Prevelance of Type II Diabetes in CO, MT, and WY"
    ) +
  theme(
    axis.title.x = element_blank(
    
    ),
    axis.ticks.x = element_blank(
      
    )
  ) +
  ylim(
    0, 10
    ) + 
  geom_hline(
    aes(
      yintercept = 9.2
      )
    ) + 
  geom_text(
    aes(
      1, 
      9.2, 
      label = "Median of US", 
      vjust = -1
      )
    )

