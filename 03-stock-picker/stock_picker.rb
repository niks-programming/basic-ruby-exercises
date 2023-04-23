# Nik O'Brien
# Created Date: 4/21/2023

def stock_picker(stock_prices = [1,2,3])
    # generate an array of max sell prices
    max_prices = stock_prices.map do |i|
        stock_prices[1+stock_prices.index(i)..-1].max
    end

    # fix the last value
    max_prices[-1] = stock_prices[-1]

    # calculate profits
    profits = []
    for i in 0..(max_prices.length-1)
        profits[i] = max_prices[i]-stock_prices[i]
    end 
    
    # find the index of the highest profit
    profit_index = profits.index(profits.max)
    # profits[0] = 2
    # max_prices[0] = 3
    # stock_prices[0] = 1

    
    # return the array
    buy_and_sell = Array.new
    buy_and_sell[0] = profit_index 
    buy_and_sell[1] = stock_prices.index(max_prices[0])

    puts buy_and_sell
end

stock_picker([17,3,6,9,15,8,6,1,10])