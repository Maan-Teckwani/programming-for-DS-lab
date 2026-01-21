# Initialize an empty list to store the shopping items
shopping_list <- list()

# Function to add items to the list
add_item <- function(item) {
  # Use the super-assignment operator to modify the global shopping_list
  shopping_list <<- c(shopping_list, item)
}

# Function to remove items from the list
remove_item <- function(item) {
  if (item %in% shopping_list) {
    # Find the index of the item and remove it
    index <- which(shopping_list == item)
    shopping_list <<- shopping_list[-index]
  } else {
    cat("Item '", item, "' not found in the list.\n", sep = "")
  }
}

# Function to view the shopping list
view_list <- function() {
  if (length(shopping_list) == 0) {
    cat("The shopping list is currently empty.\n")
  } else {
    cat("Shopping List Items:\n")
    for (i in seq_along(shopping_list)) {
      cat(i, ". ", shopping_list[[i]], "\n", sep = "")
    }
  }
}

# Example usage and testing
add_item("Apples")
add_item("Bread")
add_item("Milk")
add_item("Eggs")

cat("Initial List:\n")
view_list()

# Removing an item
cat("\nRemoving 'Bread'...\n")
remove_item("Bread")

cat("Updated List:\n")
view_list()

"Parizaa 23BCE0760"
