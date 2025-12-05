# Implement a method #stock_picker that takes in an array of stock prices,
# one for each hypothetical day. It should return a pair of days representing 
# the best day to buy and the best day to sell. Days start at 0.
# 
# Don't buy on the last day because we can't sell after it
# Find the next lowest valid day
# 
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
  sell_day = nil
  buy_day = nil
  profit = 0
  # Iterate through the array (each with index)
  # for each index, find higher values and compute profit, store values and highest profit seen.
  daily_prices.each_with_index do |price, index|
    sub_array = daily_prices[index + 1..-1]

    if sub_array.any? && (sub_array.max - price) >= profit
      profit = sub_array.max - price
      buy_day = index
      sell_day = daily_prices.index(sub_array.max)
    end
  end
  [buy_day, sell_day]
end

# [17,3,6,9,13,8,6,1,15]