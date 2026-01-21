# Initialize an empty list to store student records
student_records <- list()

# Function to add student names and grades to the list
add_student_grade <- function(name, grade) {
  # Use super-assignment to update the list in the global environment
  student_records[[name]] <<- grade
}

# Function to remove student names and grades from the list
remove_student_grade <- function(name) {
  if (name %in% names(student_records)) {
    student_records[[name]] <<- NULL
  } else {
    cat("Student", name, "not found.\n")
  }
}

# Function to calculate the average grade of the students
calculate_average_grade <- function() {
  if (length(student_records) == 0) {
    return(0)
  }
  # Convert list values to a numeric vector and calculate mean
  grades <- as.numeric(unlist(student_records))
  return(mean(grades))
}

# Example usage and testing
add_student_grade("Alice", 85)
add_student_grade("Bob", 92)
add_student_grade("Charlie", 78)

cat("Current Student Grades:\n")
print(student_records)

cat("\nAverage Grade:", calculate_average_grade(), "\n")

# Removing a student
remove_student_grade("Charlie")
cat("\nAfter removing Charlie:\n")
print(student_records)
cat("Updated Average Grade:", calculate_average_grade(), "\n")

"Parizaa 23BCE0760"
