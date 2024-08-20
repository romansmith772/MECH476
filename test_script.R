# demo_script.R

# This is a demo script to test GitHub push and pull functionality

# Create a simple data frame
demo_data <- data.frame(
  id = 1:5,
  name = c("Alice", "Bob", "Charlie", "David", "Eve"),
  score = c(85, 90, 78, 92, 88)
)

# Print the data frame
print(demo_data)

# Save the data frame to a CSV file
write.csv(demo_data, "demo_data.csv", row.names = FALSE)

