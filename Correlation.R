# Load the necessary packages
# library(dplyr)
# library(ggplot2)
# library(sf)
# library(maptools)

corellation <- function(dataframe1, dataframe1name, dataframe2, dataframe2name)
{
  # Calculate and print the correlation
  cat("Corellation:", cor(dataframe1, dataframe2), "\n")
  
  # Visualize the relationship between the two variables using a scatterplot
  ggplot(mapping = aes(dataframe1, dataframe2)) +
    geom_point() +
    geom_smooth(method = "lm", se = FALSE) +
    xlab(dataframe1name) +
    ylab(dataframe2name)
}