# Input data
closing_prices <- c(120, 122, 118, 121, 119, 117, 123, 125, 126, 124, 
                    128, 130, 129, 131, 135, 134, 136, 137, 140, 138, 
                    139, 141, 142, 144, 143, 145, 146, 148, 147, 149)

# 1. Calculate the daily returns (percentage change)
# Daily Return = [(Price_today - Price_yesterday) / Price_yesterday] * 100
n <- length(closing_prices)
daily_returns <- ((closing_prices[2:n] - closing_prices[1:(n-1)]) / closing_prices[1:(n-1)]) * 100

cat("Daily Returns (%):\n")
print(round(daily_returns, 2))

# 2. Identify the days with the highest and lowest returns
# Note: Since returns start from Day 2, we adjust the index
highest_return_day <- which.max(daily_returns) + 1
lowest_return_day <- which.min(daily_returns) + 1

cat("\nHighest Return: ", round(max(daily_returns), 2), "% on Day ", highest_return_day, "\n", sep="")
cat("Lowest Return: ", round(min(daily_returns), 2), "% on Day ", lowest_return_day, "\n", sep="")

# 3. Calculate the cumulative return over the month
# Cumulative Return = [(Final Price - Initial Price) / Initial Price] * 100
cumulative_return <- ((closing_prices[n] - closing_prices[1]) / closing_prices[1]) * 100

cat("\nCumulative Return for the Month:", round(cumulative_return, 2), "%\n")

"Parizaa 23BCE0760"
