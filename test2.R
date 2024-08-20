# test_script.R

# Test Script to Check GitHub Branch Functionality

# Load necessary library (if needed)
# install.packages("dplyr") # Uncomment if dplyr is not installed
library(dplyr)

# Create a simple data frame
set.seed(123)
test_data <- data.frame(
  id = 1:10,
  value = rnorm(10, mean = 50, sd = 10)
)

# Print the data frame
print("Original Data Frame:")
print(test_data)

# Perform a simple analysis: calculate the mean value
mean_value <- mean(test_data$value)
print(paste("Mean Value:", round(mean_value, 2)))

# Filter data for values greater than the mean
filtered_data <- test_data %>% filter(value > mean_value)

# Print the filtered data
print("Filtered Data (Values greater than mean):")
print(filtered_data)

# Save the filtered data to a CSV file
write.csv(filtered_data, "filtered_data.csv", row.names = FALSE)

# Output message
print("Test script executed successfully!")
