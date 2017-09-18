=begin
Create a script with some variables that convert seconds in minutes, seconds in hours and second in days.

This script prints the result of all arithmetic operations with specified parameters.
=end

def print_conversions (seconds)
  minutes = seconds / 60
  hours = minutes / 60
  days = hours / 24
  puts 'Value in minutes %0.2f' % [minutes]
  puts 'Value in hours %0.2f' % [hours]
  puts 'Value in days %0.2f' % [days]
end

puts 'Please, enter the seconds value'
seconds = gets.chomp.to_f

puts seconds < 0.0 ? 'Please enter a valid number' : print_conversions(seconds)
