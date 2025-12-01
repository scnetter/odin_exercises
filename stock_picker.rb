# Implement a method #stock_picker that takes in an array of stock prices,
# one for each hypothetical day. It should return a pair of days representing 
# the best day to buy and the best day to sell. Days start at 0.
# - You must buy before you can sell - days before the lowest can't be used as the sell date
# - Edge cases: lowest day is the last day or highest day is the first day. 
#   - Pick the next lowest or the next highest as the day to buy or sell in that scenario

# TODO: Initial Version Goals
# Build something like:
# 1.	Find low.
# 2.	Find high after low.
# 3.	Compute profit.
# 4.	Repeat.
# 5.	Keep best.

def stock_picker(daily_prices)
  buy_sell_days = []
  # Find the lowest price
  
end