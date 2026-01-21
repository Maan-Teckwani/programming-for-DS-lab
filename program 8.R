# Function to calculate area of circle
calculate_circle_area <- function(radius) {
  area <- pi * (radius^2)
  return(area)
}

# Test the function with different sets of inputs
radius1 <- calculate_circle_area(3)
radius2 <- calculate_circle_area(5.5)
radius3 <- calculate_circle_area(0)
radius4 <- calculate_circle_area(7.2)

# Print the test results
cat("Area of circle with radius 3:", radius1, "\n")
cat("Area of circle with radius 5.5:", radius2, "\n")
cat("Area of circle with radius 0:", radius3, "\n")
cat("Area of circle with radius 7.2:", radius4, "\n")

