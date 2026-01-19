library(tidyverse)

set.seed(123)  # for reproducibility

# --- Simulate raw data ---
raw_data <- tibble(
    id = 1:100,
    age = rnorm(100, mean = 55, sd = 15),
    bmi = rnorm(100, mean = 27, sd = 4),
    systolic_bp = rnorm(100, mean = 120, sd = 15)
)

# --- Data cleaning ---
clean_data <- raw_data %>%
    mutate(
        age = if_else(age < 0 | age > 120, NA_real_, age),
        bmi = if_else(bmi < 10 | bmi > 60, NA_real_, bmi),
        systolic_bp = if_else(systolic_bp < 70 | systolic_bp > 250,
                              NA_real_, systolic_bp)
    )