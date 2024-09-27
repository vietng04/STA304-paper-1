#### Preamble ####
# Purpose: Tests... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
# [...UPDATE THIS...]

#### Test data ####
data <- read_csv("/Users/nguyenviet/Documents/STA304 - paper 1/data/analysis_data/analysis_data.csv")

# Test case 1: Check for no NA values in important columns
test_case_1 <- all(!is.na(data$Date))
test_case_2 <- all(!is.na(data$Clients))
test_case_3 <- all(!is.na(data$Clients_transported))
test_case_4 <- all(!is.na(data$Clients_stationary))

# Test case 5: Check if Date range is within a specified period
test_case_5 <- min(data$Date) >= as.Date("2023-11-15")
test_case_6 <- max(data$Date) <= as.Date("2024-03-23")

# Test case 7: Check if the data types are correct
test_case_7 <- class(data$Date) == "Date"
test_case_8 <- class(data$Clients) == "numeric"
test_case_9 <- class(data$Clients_transported) == "numeric"
test_case_10 <- class(data$Clients_stationary) == "numeric"

# Test case 11: Check if all columns have the same number of non-missing values
test_case_11 <- sum(!is.na(data$Date)) == sum(!is.na(data$Clients)) &&
  sum(!is.na(data$Date)) == sum(!is.na(data$Clients_transported)) &&
  sum(!is.na(data$Date)) == sum(!is.na(data$Clients_stationary))