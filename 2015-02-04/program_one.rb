# Bill and Ted have $12.50
# They want to purchase some
# candy bars that are $0.75.
# How many can they buy?

money = 12.50
price = 0.75

# number_of_bars = (money / price).to_i

# puts "Bill and Ted can buy #{number_of_bars} candy bars"

while money > price

  money = money - price
  puts "Purchase one bar (#{money} left)"
end
