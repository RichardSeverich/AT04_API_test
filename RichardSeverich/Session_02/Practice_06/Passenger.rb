=begin
Write 1 method that prints a passenger name ,a destination city and the price of ticket in dollars.
	1.The name should be received from the user
	2.If no destination is defined the value by default should be CBBA.
	3.The price of the ticket should be received by user, and the transformation to dollars 
		should be returned from the method. It should be  float (E.g 150.25)
	4.Perform the calculation using variables, to return the value don’t use return word
	5.When you call the method, don’t use parenthesis
	6.After call the method don’t forget to print the value returned.
=end
class Passenger
	attr_reader :name
	attr_reader :destination_city
	attr_reader :price_ticket
   def initialize(name, price_ticket, destination_city="CBBA")
		@name = name
		@destination_city = destination_city
		@price_ticket = convert_dolars price_ticket
  end
  def convert_dolars(price_ticket)
  		'%.2f' % (price_ticket.to_f/6.94)
  end
end

passenger = Passenger.new "Richard",700,"SantaCruz"
puts "********PASSENGER DATA********"
puts "Name : #{passenger.name}"
puts "Destination : #{passenger.destination_city}"
puts "Price ticket : #{passenger.price_ticket}"

passenger = Passenger.new "JUAN",690
puts "********PASSENGER DATA********"
puts "Name : #{passenger.name}"
puts "Destination : #{passenger.destination_city}"
puts "Price ticket : #{passenger.price_ticket}"
