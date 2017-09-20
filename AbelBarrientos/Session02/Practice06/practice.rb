=begin
Write 1 method that prints a passenger name ,a destination city and the price
of ticket in dollars.
1. The name should be received from the user
2. If no destination is defined the value by default should be CBBA.
3. The price of the ticket should be received by user, and the transformation
to dollars should be returned from the method. It should be  float (E.g 150.25)
4. Perform the calculation using variables, to return the value don’t use
return word
5. When you call the method, don’t use parenthesis
6. After call the method don’t forget to print the value returned.
=end

#First Implementation
def buy_ticket (city = "CBBA")
  puts "Type the name: "
  name = gets.chomp
  puts "Type the Ticket Price: "
  ticket_price = gets.chomp
  ticket_price_in_dollars = (ticket_price.to_f / 6.92).round(2)
  puts "Passenger name: #{name}"
  puts "Destination City: #{city}"
  puts "Price of Ticket: #{ticket_price_in_dollars}"
end

buy_ticket

#Second Implementation
def buy_ticket (name, city = "CBBA", ticket_price)
  ticket_price_in_dollars = (ticket_price.to_f / 6.92).round(2)
  puts "Passenger name: #{name}"
  puts "Destination City: #{city}"
  puts "Price of Ticket: #{ticket_price_in_dollars}"
end

puts "Type the name: "
name = gets.chomp
puts "Type the Ticket Price: "
ticket_price = gets.chomp
buy_ticket name, "SCR", ticket_price
