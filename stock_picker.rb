def stock_picker(stock_prices)
  buy_sell = stock_prices.combination(2).to_a.sort { |a, b| ((b[1] - b[0]) <=> (a[1]-a[0]))}.first
  stock_pick = []
  stock_pick << stock_prices.index(buy_sell[0])
  stock_pick << stock_prices.index(buy_sell[1])
  stock_pick
end

p stock_picker([17,3,6,9,15,8,6,1,10])