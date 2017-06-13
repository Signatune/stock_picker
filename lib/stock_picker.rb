def stock_picker(prices)
  start_time = Time.now
  best_days = [0, 0]
  best_profit = 0
  
  prices.each_with_index do |price, index|
    
    current_day_and_profit = best_day_to_sell(index, prices)
    
    if current_day_and_profit[1] > best_profit
      best_days = [index, current_day_and_profit[0]]
      best_profit = current_day_and_profit[1]
    end
  end
  
  end_time = Time.now
  puts "#{end_time - start_time}"
  return best_days
end

def best_day_to_sell(buy_day_index, prices)
  # The best day to sell found so far
  best_day = buy_day_index
  # The best price found so far
  best_profit = 0
  days_to_sell = prices[buy_day_index+1...prices.length+1]
  
  days_to_sell.each_with_index do |price, index|
    profit = price - prices[buy_day_index]
    if profit > best_profit
      best_profit = profit
      best_day = index
    end
  end

  return [best_day + buy_day_index + 1, best_profit]
end