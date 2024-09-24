#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto
# Author: Hoang Viet Nguyen
# Date: 22 September 2024
# Contact: viethoang.nguyen@utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
install.packages("opendatatoronto")
library(opendatatoronto)
library(tidyverse)

search_results <- search_packages("transportation")
head(search_results)
#### Download data ####
package <- show_package("transport-bus-initiative-usage")

# get all resources for this package
resources <- list_package_resources("transport-bus-initiative-usage")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'json'))

# load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==1) %>% 
  get_resource()

#### Save data #### 
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(data, "Documents/STA304 - paper 1/data/raw_data/raw_data.csv")