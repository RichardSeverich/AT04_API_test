=begin
Write 1 method that prints a passenger name ,a destination city and the price of ticket in dollars.
The name should be received from the user
If no destination is defined the value by default should be CBBA.
The price of the ticket should be received by user, and the transformation to dollars should be returned from the method.
It should be  float (E.g 150.25)
Perform the calculation using variables, to return the value don’t use return word
When you call the method, don’t use parenthesis
After call the method don’t forget to print the value returned.

=end

class Agency
  def initialize(name,price,destiny="Cochabamba")
    @name=name
    @price=price
    @destiny=destiny
  end
  def name
    puts "the passanger name is: #{@name}"
  end

def destiny
  puts "the destination city is: #{@destiny}"

end
  def transformation_dollars()
    dolar=@price.to_f/6.97
    puts "the price in dollars is: #{dolar}"
  end

end

agency= Agency.new("Cynthia",100, )
agency.name
agency.destiny
agency.transformation_dollars