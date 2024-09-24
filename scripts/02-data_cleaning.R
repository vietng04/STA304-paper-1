#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers
# Author: Hoang Viet NGuyen
# Date: 22 September 2024
# Contact: viethoang.nguyen@utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("/Users/nguyenviet/Documents/STA304 - paper 1/data/raw_data/raw_data.csv")

cleaned_data <- raw_data |>
  select(Date, Clients, Clients_transported = `Clients transported`, Clients_stationary = `Clients stationary`) |>
  filter(!is.na(Clients) & !is.na(Clients_transported) & !is.na(Clients_stationary)) |>
  mutate(
    Date = as.Date(Date),
    Clients = as.numeric(Clients),
    Clients_transported = as.numeric(Clients_transported),
    Clients_stationary = as.numeric(Clients_stationary)
  ) |> 
  drop_na()

#### Save data ####
library(readr)
write_csv(cleaned_data, "/Users/nguyenviet/Documents/STA304 - paper 1/data/analysis_data.csv")
