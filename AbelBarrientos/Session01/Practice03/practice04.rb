=begin
4. Create a script with some variables that convert seconds in minutes,
seconds in hours and second in days.
=end

puts "Input seconds:"
seconds = gets.chomp.to_i

puts "Seconds to minutes: #{minutes = seconds / 60}"
puts "Seconds to hours: #{hours = minutes / 60}"
puts "Seconds to days: #{days = hours / 24}"
