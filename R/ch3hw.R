library(readr)
library(dplyr)
library(tidyr)
#question 1
cleaned_data <- read_csv("ftc_o3.csv") %>%
  select(sample_measurement, datetime) %>%
  drop_na() %>%
  rename(ozone_ppm = sample_measurement)
#question 2
str(cleaned_data)
head(cleaned_data)
missing_data <- sum(is.na(cleaned_data$ozone_ppm))


