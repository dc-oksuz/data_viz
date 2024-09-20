install.packages("tidyverse") #loading required packages
install.packages("rempsyc")
library(tidyverse)
library(rempsyc)

data <- mtcars
names(data)[6:3] <- paste0("T", 1:4, "_some-time-variable")

plot_means_over_time(
  data = data,
  response = names(data)[6:3],
  group = "cyl",
  groups.order = "decreasing",
  significance_bars_x = c(3.15, 4.15),
  significance_stars = c("*", "***"),
  significance_stars_x = c(3.25, 4.35),
  # significance_stars_y: List with structure: list(c("group1", "group2", time))
  significance_stars_y = list(c("4", "8", time = 3),
                              c("4", "8", time = 4)))
