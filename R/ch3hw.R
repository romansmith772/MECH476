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

top_ten_ozone <- cleaned_data %>%
  slice_max(order_by=ozone_ppm, n=10)

low_ten_ozone <- cleaned_data %>%
  slice_min(order_by = ozone_ppm, n=10)
#question 3
high_day <- top_ten_ozone %>%
  slice_max(order_by = ozone_ppm, n=1) %>%
  pull(datetime)
low_day <- top_ten_ozone %>%
  slice_min(order_by = ozone_ppm, n=1) %>%
  pull(datetime)
#question 4
tempc<- #temp in Celsius
mol_weight_o3 <- 47.998 #grams/mol
c_to_k <-273.1+tempc #Celsius to kelvin
pressure_in_ftc <- 637 #atmostpheric pressure in ft collins mmHg
r <- 22.4136 #universial gas constant
ozone_ugm3 <- 
