=begin
Write 1 Methods that transform Celsius in Fahrenheit
	 Fahrenheit = (((9* Celsius ) /5) + 32)
This method should receive a Celsius value
Pickup any way of the return displayed.	

2. Write 1 Method that transform Fahrenheit in Celsius 
	 Celsius = (5*(Fahrenheit - 32))/9
This method should receive a Celsius value
Pickup any other way of the return displayed
Tips : use the correct format of number (int? float?)

=end
class Convert
  def  Celsius_to_Fahrenheit(celsius)
   (((9.0* celsius ) /5.0) + 32.0)
  end
  def  Fahrenheit_to_Celsius(fahrenheit)
  	(5.0 * (fahrenheit - 32.0)) / 9.0
  end
end

convert = Convert.new()
puts "Convert 100 Celsius to Fahrenheit is #{convert.Celsius_to_Fahrenheit(100.0)}"
puts "Convert 212 Fahrenheit to Celsius is #{convert.Fahrenheit_to_Celsius(212.0)}"
