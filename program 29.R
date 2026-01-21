# Initialize a list to store customer names and purchase amounts 
customer_data <- list(
  "Alice" = c(200, 150, 300),
  "Bob" = c(100, 80, 150),
  "Charlie" = c(250, 300, 100)
)

# 1. Function to add a new customer and their purchases 
add_customer <- function(data_list, name, purchases) {
  data_list[[name]] <- purchases
  return(data_list)
}

# 2. Function to remove a customer from the list 
remove_customer <- function(data_list, name) {
  data_list[[name]] <- NULL
  return(data_list)
}

# 3. Function to calculate totals and 4. find extremes 
analyze_purchases <- function(data_list) {
  if (length(data_list) == 0) return("No customer data available.")
  
  # Calculate total purchase amount for each customer using sapply 
  totals <- sapply(data_list, sum)
  
  # Identify highest and lowest total purchases 
  max_cust <- names(totals)[which.max(totals)]
  min_cust <- names(totals)[which.min(totals)]
  
  # Display Results 
  cat("Total Purchase Amounts:\n")
  print(totals)
  cat("\nCustomer with Highest Total Purchases:", max_cust, "(", max(totals), ")\n")
  cat("Customer with Lowest Total Purchases:", min_cust, "(", min(totals), ")\n")
}

# Running initial analysis 
analyze_purchases(customer_data)

# Adding a new customer 
customer_data <- add_customer(customer_data, "David", c(500, 100))
cat("\n--- After adding David ---\n")
analyze_purchases(customer_data)

# Removing a customer 
customer_data <- remove_customer(customer_data, "Bob")
cat("\n--- After removing Bob ---\n")
analyze_purchases(customer_data)

"Parizaa 23BCE0760"
