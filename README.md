# STOCK PICKER - BASIC RUBY | THE ODIN PROJECT

Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

```Ruby
  stock_picker([17,3,6,9,15,8,6,1,10])
  # => [1,4]  for a profit of $15 - $3 == $12
```

Quick Tips:

    You need to buy before you can sell
    Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.


## USAGE
  - Enter **stock_picker(stock_prices: Array)**
    - stock_prices = This is where you put the list of stock prices

## TEST CASES

```Ruby
# Test Case
stock_prices_list = [17,3,6,9,15,8,6,1,10]
puts "#{stock_picker (stock_prices_list)}" # => [1, 4]

# Other Test Cases
stock_prices_list = [1, 60, 5, 10, 150, 220, 100]
puts "#{stock_picker (stock_prices_list)}" # Should Return: [0, 5] 

stock_prices_list = [50, 2, 11, 25, 50, 1, 60]
puts "#{stock_picker (stock_prices_list)}" # Should Return: [5, 6] 

stock_prices_list = [100, 50, 2, 1, 25, 50, 60, 36, 17, 70, 20, 22, 24]
puts "#{stock_picker (stock_prices_list)}" # Should Return: [3, 9] 
```

> ### Output:
``` Ruby
ruby stock_picker.rb
[1, 4]
[0, 5]
[5, 6]
[3, 9]
```