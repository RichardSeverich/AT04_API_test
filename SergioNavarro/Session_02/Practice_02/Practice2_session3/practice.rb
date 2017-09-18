#Class
class Practice
  def celsius_to_fahrenheit(celsius)
    ((9* celsius ) /5) + 32
  end

  def fahrenheit_to_celsius(fahrenheit)
    return (5*(fahrenheit - 32))/9
  end

end

other = Practice.new
print "Insert the Celsius you want to turn into Fahrenheit: "
celsius = gets.chomp.to_f
puts other.celsius_to_fahrenheit celsius
print "Insert the Fahrenheit you wan to turn into Celsius: "
fahrenheit = gets.chomp.to_f
puts "Convertion succesful for Fahrenheit to Celsius: #{other.fahrenheit_to_celsius fahrenheit}"
