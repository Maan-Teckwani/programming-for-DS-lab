# Define two vectors of different lengths
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c(10, 20, 30)

# Perform element-wise operations using recycling
# R will recycle the shorter vector (vec2) to match the length of vec1
addition_result <- vec1 + vec2
subtraction_result <- vec1 - vec2
multiplication_result <- vec1 * vec2

# Display the original vectors
cat("Vector 1:", vec1, "\n")
cat("Vector 2:", vec2, "\n\n")

# Display the results of arithmetic operations
cat("Addition Result (vec1 + vec2):\n")
print(addition_result)

cat("\nSubtraction Result (vec1 - vec2):\n")
print(subtraction_result)

cat("\nMultiplication Result (vec1 * vec2):\n")
print(multiplication_result)

"Parizaa 23BCE0760"
