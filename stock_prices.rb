def get_max_profit(stock_prices)
  # returns 6 (buying for $5 and selling for $11)
  min_price = stock_prices.min(1)
  min_price_index = stock_prices.index(min_price[0])
  max_price = []
  stock_prices.each_with_index do |price, index|
    if index > min_price_index
      max_price << price
    end
  end
  if max_price.empty? || max_price[0] == min_price[0]
    return 0 - min_price[0]
  else
    max_price.max(1)[0] - min_price[0]
 end
end

# stock_prices = [10, 7, 2, 5, 8, 11, 9, 12]
stock_prices = [14, 3, 2, 1]
p get_max_profit(stock_prices)
# above is my first attempt - not efficient time or space wise, but not as bad
# as O(n^2)
