
# Load the cleaned financial data
df <- read.csv("Financials_cleaned.csv")


# Keep only transactions where the company made a loss (Profit is negative)
losses <- subset(df, Profit < 0)



total_loss <- sum(losses$Profit) 

#Which segment lost the most money?

loss_by_segment <- aggregate(
  Profit ~ Segment,
  data = losses,
  FUN = sum
)

# Count loss making transactions by Segment
loss_count <- aggregate(
  Profit ~ Segment,
  data = losses,
  FUN = length
)

# Combine loss count and loss total into a single table for easier reading
loss_summary <- merge(loss_count, loss_by_segment, by = "Segment")
names(loss_summary) <- c("Segment", "Loss_Transactions", "Total_Loss")
print(loss_summary)


# source("financial.R")   