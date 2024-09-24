#### Preamble ####
# Purpose: Simulates data
# Author: Hoang Viet Nguyen
# Date: 22 September 2024
# Contact: viethoang.nguyen@utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)
# [...UPDATE THIS...]

#### Simulate data ####
num_samples <- 100

norm_flying_time <- runif(num_samples, min = min(analysis_data$flying_time), max = max(analysis_data$flying_time))

norm_weight <- rnorm(num_samples, mean(analysis_data$length), sd(analysis_data$length))

simulated_data <- data.frame(flying_time = norm_flying_time, weight = norm_weight)

### Write_csv
write_csv(simulated_data, file = "data/raw_data/simulated_data.csv")