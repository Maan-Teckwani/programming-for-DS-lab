# Input vector of names
names_vec <- c("Alice", "Bob", "Charlie", "David")

# 1. Convert all names to uppercase
upper_names <- toupper(names_vec)

# 2. Count the number of characters in each name
name_lengths <- nchar(names_vec)

# 3. Check if names contain the letter "a" (case-insensitive)
# grepl returns a logical vector
contains_a <- grepl("a", names_vec, ignore.case = TRUE)

# Display Results
cat("Original Names:\n")
print(names_vec)

cat("\nUppercase Names:\n")
print(upper_names)

cat("\nCharacter Counts:\n")
# Naming the vector for better readability
names(name_lengths) <- names_vec
print(name_lengths)

cat("\nDoes the name contain 'a'?\n")
names(contains_a) <- names_vec
print(contains_a)

"Parizaa 23BCE0760"