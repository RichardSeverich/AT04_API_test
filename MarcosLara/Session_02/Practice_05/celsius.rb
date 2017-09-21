def fahrenheit_to_celsius(fahrenheit)
  5.fdiv(9) * (fahrenheit - 32)
end

#Conversion of 100°F to °C
result_one = fahrenheit_to_celsius(100)
puts 'The value of 100°F in °C is %.1f' % [result_one]

#Conversion of 66°F to °C
result_two = fahrenheit_to_celsius(66)
puts 'The value of 66°F in °C is %.1f' % [result_two]