flat_fee = fn _price -> 5 end
proportional_fee = fn price -> price * 0.12 end

total_price = fn price, fee -> price + fee.(price) end

final = total_price.(200, flat_fee)
IO.inspect("Total price with flat fee #{final}")

final_proportional = total_price.(200, proportional_fee)
IO.inspect("Total price with proportional fee: #{final_proportional}")
