library(tidyverse)

set.seed(123)  # for reproducibility

# --- Simulate raw data ---
raw_data <- tibble(
    id = 1:100,
    age = rnorm(100, mean = 45, sd = 15),
    bmi = rnorm(100, mean = 27, sd = 4),
    systolic_bp = rnorm(100, mean = 120, sd = 15)
)
