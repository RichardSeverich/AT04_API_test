def celsius_to_fahrenheit(celsius)
  9.fdiv(5) * celsius + 32
end

#Conversion of 27°C to °F
result_one = celsius_to_fahrenheit(27)
puts 'The value of 27°C in °F is %.1f' % [result_one]

#Conversion of 100°C to °F
result_two = celsius_to_fahrenheit(100)
puts 'The value of 100°C in °F is %.1f' % [result_two]