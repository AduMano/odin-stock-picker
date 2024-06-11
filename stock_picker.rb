def get_potential_buying_days (array) 
  price = array.max
  first_iteration = true
  potential_days = []

  array.each_cons(2) do | days |

    if first_iteration == true
      if days[0] < days[1]
        potential_days.push(array.find_index(days[0]))
        next
      end

      first_iteration = false
    end

    if days[0] > days[1]
      unless days[1] > price
        price = days[1]
        potential_days.push(array.find_index(days[1]))
      end
    end
  end

  potential_days
end

def get_sell_and_profit (stock_prices, index)
  max_sell_price = stock_prices[index .. -1].max
  
  return {
    profit: max_sell_price - stock_prices[index],
    buy_index: index,
    sell_index: stock_prices.find_index(max_sell_price)
  }
end

def stock_picker (stock_prices)
  potential_buying_days = get_potential_buying_days(stock_prices)

  profits_of_potential_days = potential_buying_days.map do |days_index|
    get_sell_and_profit(stock_prices, days_index)
  end

  result = profits_of_potential_days.reduce do |selected_profit, potential_day| 
    potential_profit = potential_day[:profit]
    previous_potential_profit = selected_profit[:profit]

    if potential_profit > previous_potential_profit
      selected_profit = potential_day
    else
      selected_profit
    end
  end

  return [result[:buy_index], result[:sell_index]]
end

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