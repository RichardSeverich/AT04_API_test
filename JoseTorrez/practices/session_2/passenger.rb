def buy_ticket (_name, _city = 'CBBA', _ticket_price)
    _ticket_price_in_dollars = (_ticket_price.to_f / 6.92)
    puts "Passenger name: #{_name}"
    puts "Destination City: #{_city}"
    puts "Price of Ticket: #{_ticket_price_in_dollars}"
end

puts 'Introduce the name of the passenger: '
_name = gets.chomp
puts 'Introduce the ticket price: '
_ticket_price = gets.chomp
buy_ticket _name, 'La Paz', _ticket_price
