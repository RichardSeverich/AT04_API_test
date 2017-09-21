=begin
Considered your previous script of convert seconds in minutes and seconds in hours :
  - Ask from prompt the value of the seconds
  - Perform the calculation of minutes and hours into one function, return both values
  - Print the values of the variables
=end

def conversion(seconds)
  minutes = seconds.fdiv(60)
  hours = minutes.fdiv(60)
  return minutes, hours
end

puts 'Enter the number of seconds'
seconds = gets.to_f
result = conversion(seconds)

puts seconds < 0.0 ? 'Enter valid values' : 'Minutes: %0.2f - Hours %0.2f' % [result[0], result[1]]