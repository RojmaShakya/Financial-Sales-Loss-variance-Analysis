# Load the cleaned financial data
df <- read.csv("Financials_cleaned.csv")

# Convert Date from text into an actual date
df$Date <- as.Date(df$Date)


# Keep only transactions where the company made a loss
losses <- subset(df, Profit < 0)

# Count loss making transactions by Segment
loss_count <- aggregate(
  Profit ~ Segment,
  data = losses,
  FUN = length
)

# Calculate the total loss for each business segment
loss_total <- aggregate(
  Profit ~ Segment,
  data = losses,
  FUN = sum
)

# Display the loss making transactions
print(loss_count)
print(loss_total)