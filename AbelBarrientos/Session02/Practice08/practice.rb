=begin
Considered your previous script of convert seconds in minutes and seconds in
hours :
1. Ask from prompt the value of the seconds
2. Perform the calculation of minutes and hours into one function, return both
values
3. Print the values of the variables.
=end

def calculate(seconds)
  minutes = seconds / 60
  hours = minutes / 60
  return minutes, hours
end

puts "Input seconds:"
seconds = gets.chomp.to_i
minutes, hours = calculate(seconds)
puts "Minutes: #{minutes}, Hours: #{hours}"
