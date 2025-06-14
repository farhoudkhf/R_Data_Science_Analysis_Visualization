# File:     03_07_ClusterCharts.R
# Project:  LearningR

# LOAD PACKAGES ############################################

# RStudio will prompt you to download any packages that
# aren't already installed.

install.packages("ggdendro") # Alternative visualization

# Load packages
library(tidyverse)  # Loads the `tidyverse` collection
library(readxl)     # Reads CSV and Excel files
library(ggdendro)   # loads alternative visulization


# LOAD DATA ################################################

# Select state codes and search data
df <- read_csv("data/state_trends.csv") |>
  select(state_code, artificial_intelligence:hockey) |>
  drop_na() # remove cases with missing values

# Standardize and Prepare data #############################################

# Standardize Quantetative Variables 
df_scaled <- df |>
  select(-state_code) |>  # remove state code from scaling
  scale()                 # standardize variables

# Assign state codes as row name
rownames(df_scaled) <- df$state_code

# ANALYZE DATA #############################################

# Calculate clusters using hclust(), an agglomerative method
hc <- df_scaled |>  # Get data
  dist() |>  # Compute distance/dissimilarity matrix
  hclust()   # Compute hierarchical clusters

# Plot dendrogram
hc |> plot(
  labels = rownames(df_scaled), # df$state_code
  main = "Cluster Dendrogram of States"
  )

# Draw boxes around clusters
hc |> rect.hclust(k = 2, border = "gray80")  # 2 boxes
hc |> rect.hclust(k = 3, border = 2:4)       # 3 boxes


# Alternative Visualization from ‘ggdendro’
hc |> ggdendrogram(
  rotate = TRUE,         # Rotate to Horizontal
  theme_dendro = FALSE  # Turns off
)


# CLEAN UP #################################################

# Clear R 
#   Restart R to clear objects from the environment, clear
#   plots, unload external packages, reset options, relative
#   paths, dependencies, etc. Use the RStudio menu Session > 
#   Restart R, or use Ctrl+Shift+F10 (for Windows and Linux)
#   or Command+Shift+0 (for MacOS).

# Clear console
cat("\014")  # Mimics ctrl+L

# Clear mind :)
