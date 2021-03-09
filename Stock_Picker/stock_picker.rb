# Implement a method #stock_picker that takes in an array of stock prices, one 
# for each hypothetical day. It should return a pair of days representing the 
# best day to buy and the best day to sell. Days start at 0.
# 
# - You need to buy before you can sell
# - Pay attention to edge cases like when the lowest day is the last day 
#   or the highest day is the first day.

def stock_picker(prices)
    acc_profit = 0
    acc_buy_date = 0
    acc_sell_date = 0
 
     profits = prices.map.with_index do |price, index|
       remaining_days = prices[index..-1] # to create an array that becomes smaller each iteration from index 0
       maximum = remaining_days.max # to identify the maximum number in that iteration's array
       highest_value = maximum - price # price is at index 0, so maximum minus minimum for each one will help identify the best buy/sell dates
 
       # create accumilator for index and value of highest profit
       if highest_value > acc_profit
         acc_profit = highest_value
         acc_buy_date = prices.index(price)
         acc_sell_date = prices.index(maximum)
       end

     end
     
     p "Buy on day #{acc_buy_date} and sell on day #{acc_sell_date} for a profit of $#{acc_profit}."
 end
 
 stock_picker([17,3,6,9,15,8,6,1,10])
 # should return: [1,4] for a profit of $15 - $3 == $12


##### PSEUDOCODE #####
=begin

iterate through array with index and value as parameters
    accumilators: buy_date sell_date profit = 0

    create ever shrinking array, losing the 0th index each time
    store maximum value (for sell date)
    subtract 0th index's value from max value to find profit and sell date
    
    if the profit is higher than accumilator profit, overwrite all values

    add to accumilators: 0 index, max value index, profit

when done, print the best dates and profit using accumilators in string literal

=end