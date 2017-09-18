=begin
Write 1 method that prints a passenger name, a destination city and the price of ticket in dollars.
=end

def ticket_info(name, destination = 'CBBA', price)
  price_dollars = price/6.91
  "Name: #{name}, destination: #{destination}, price: %.2fUSD" % [price_dollars]
end

puts 'Enter a name'
name = gets.chomp
puts 'Enter a destination'
dest = gets.chomp
puts 'Price'
price = gets.to_i

puts ticket_info name, dest, price
