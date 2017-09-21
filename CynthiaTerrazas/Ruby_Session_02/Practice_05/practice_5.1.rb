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


def transform_Celsius_Fahrenheit(celsius)
  fahrenheit = (((9* celsius ) /5) + 32).to_f
  print "#{celsius} Celsius in Fahrenheit is #{fahrenheit}"
end

transform_Celsius_Fahrenheit(60)