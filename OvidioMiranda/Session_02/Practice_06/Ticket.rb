=begin
Practice 6
Write 1 method that prints a passenger name ,a destination city and the price of ticket in dollars.
The name should be received from the user
If no destination is defined the value by default should be CBBA.
The price of the ticket should be received by user, and the transformation to dollars should be returned from the method. It should be  float (E.g 150.25)
Perform the calculation using variables, to return the value don’t use return word
When you call the method, don’t use parenthesis
After call the method don’t forget to print the value returned.

=end

class Ticket
  attr_accessor :name, :destination, :price
  @@dollar=0

  def initialize(name, price, destination = 'CBBA')
    @name = name
    @price = price
    @destination = destination.upcase
  end

  def convertToDollars(currencyOfExchange)
    @@dollar=@price / currencyOfExchange
  end

  def to_s
    puts "Name: #{@name}"
    puts "Ticket price: $us#{@@dollar.round(2)}"
    puts "Destination: #{@destination}"
  end
end

currencyOfExchange=6.91
passenger = Ticket.new 'Ovidio', 80
passenger.convertToDollars(currencyOfExchange)
passenger.to_s

passengerNew = Ticket.new 'Simon', 150, 'scr'
passengerNew.convertToDollars(currencyOfExchange)
passengerNew.to_s

puts "##### Enter Passenger data #####"
print 'Name : '
name = gets.chomp.to_s
print 'Destination: '
destination = gets.chomp.to_s
print 'Price: '
price = gets.chomp.to_f
if destination.to_s == ""
  passengerTest = Ticket.new name, price
else
  passengerTest = Ticket.new name, price, destination
end
passengerTest.convertToDollars(currencyOfExchange)
passengerTest.to_s
