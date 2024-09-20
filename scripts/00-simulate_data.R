#### Preamble ####
# Purpose: Simulates data
# Author: Lorina Yang 
# Date: 19 Septembter 2024 
# Contact: hanq.yang@mail.utoronto.ca 
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####

set.seed(304)

data <-
  tibble(
    dates = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "1970-01-01"
    ),
    number_of_marriage = rpois(n = number_of_dates, lambda = 15)
  )

#### Write_csv
write_csv(data, file = "data/raw_data/simulated.csv")


