=begin
4.- Create a script with some variables that convert seconds in minutes, seconds in hours and second in days.
=end
def converter(seconds)
  minutes = seconds / 60
  hours = minutes / 60
  days = hours / 24
  puts "#{seconds} seconds are #{days.round(2)} days,#{hours.round(2)} hours,#{minutes.round(2)} minutes"
end
puts "Example"
converter(86400)
puts "Converter seconds in minutes,hours and days"
print 'Enter the number of seconds: '
seconds = gets.chomp.to_f
converter(seconds)