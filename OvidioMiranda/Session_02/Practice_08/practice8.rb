=begin
Practice 8
Considered your previous script of convert seconds in minutes and seconds in hours :
Ask from prompt the value of the seconds
Perform the calculation of minutes and hours into one function, return both values
Print the values of the variables.
=end

def converter(seconds)
  minutes = seconds / 60
  hours = minutes / 60
  days = hours / 24
  return days, hours, minutes
end

puts "Converter seconds in minutes,hours and days"
print 'Enter the number of seconds: '
seconds = gets.chomp.to_f

days, hours, minutes= converter(seconds);
puts "#{seconds} seconds are #{days.round(2)} days,#{hours.round(2)} hours,#{minutes.round(2)} minutes"