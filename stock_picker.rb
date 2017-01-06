def stock_picker prices
	buy_date = 0
	sell_date = 0
	max_profit = 0
	i = 0

	while i < prices.size do
		j = i + 1

		while j < prices.size do
			if prices[j] - prices[i] > max_profit
				max_profit = prices[j] - prices[i]
				buy_date = i
				sell_date = j
			end
			j += 1
		end

		i += 1
	end
	puts [buy_date, sell_date]

end