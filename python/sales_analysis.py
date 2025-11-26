import pandas as pd

df = pd.read_csv("../data/sales_data.csv")

# Add revenue column
df['revenue'] = df['quantity'] * df['price']

# Summary by category
summary = df.groupby('category')['revenue'].sum()
summary.to_csv("../data/sales_summary.csv")

# Monthly trend
df['date'] = pd.to_datetime(df['date'])
monthly = df.groupby(df['date'].dt.to_period('M'))['revenue'].sum()

print("Summary by category:")
print(summary)

print("\nMonthly trend:")
print(monthly)
