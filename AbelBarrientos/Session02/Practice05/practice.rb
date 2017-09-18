=begin
1. Write 1 Methods that transform Celsius in Fahrenheit
   Fahrenheit = (((9* Celsius ) /5) + 32)
This method should receive a Celsius value
Pickup any way of the return displayed.

2. Write 1 Method that transform Fahrenheit in Celsius
   Celsius = (5*(Fahrenheit - 32))/9
This method should receive a Celsius value
Pickup any other way of the return displayed
Tips : use the correct format of number (int? float?)
=end

def fahrenheit(celsius)
  (((9 * celsius.to_f) / 5) + 32)
end

def celsius(fahrenheit)
  result = (5* (fahrenheit.to_f - 32)) / 9
end

puts fahrenheit 100
puts fahrenheit 24
puts celsius 75.2
puts celsius 212
