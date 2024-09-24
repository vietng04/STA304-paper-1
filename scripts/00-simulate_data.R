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
start_date <- as.Date("2023-11-15")
end_date <- as.Date("2024-03-23")
date_seq <- runif(n = num_samples, min = as.numeric(start_date), max = as.numeric(end_date))
clients_stationary <- rpois(n = num_samples, lambda = 30)
clients <- rpois(n = num_samples, lambda = 39)

simulated_data <- data.frame(dates = date_seq, clients = clients, clients_stationary=clients_stationary)

### Write_csv
#install.packages("readr")
library(readr)
write_csv(simulated_data, file = "/Users/nguyenviet/Documents/STA304 - paper 1/data/raw_data/simulated_data.csv")