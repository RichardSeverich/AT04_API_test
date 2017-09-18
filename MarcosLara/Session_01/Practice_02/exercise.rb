=begin
Task: Create a script where you can print numbers and arithmetic result using comparison operators.


This script prints the result of common arithmetic operations and the result of logical
expressions using the comparision operators with ternary operator.
=end

puts "The numeric value of six plus seven is #{6 + 7}"
puts "The numeric value of zero minus ten is #{0 - 10}"

puts "The numeric value of 10 + 20 - 30 * 40 / 5 % 6 is #{10 + 20 - 30 * 40 / 5 % 6}"
puts "The numeric value of 100 -500 * 1000 % 5 is #{100 -500 * 1000 % 5}"

puts "Is this logical expression 10 == 10 true? #{10 == 10 ? 'Yes' : 'No'}"
puts "Is this logical expression 10 != 10 true? #{10 != 10 ? 'Yes' : 'No'}"
puts "Is this logical expression 4 <= 2 true? #{4 <= 2 ? 'Yes' : 'No'}"

puts "Is 0.0 equals to 0? #{0.0.eql?(0) ? 'Yes' : 'No'}"
puts "Is 0.0 equals to 0.0? #{0.0.eql?(0.0) ? 'Yes' : 'No'}"
