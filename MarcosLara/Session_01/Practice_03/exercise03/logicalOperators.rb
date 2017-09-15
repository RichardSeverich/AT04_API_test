=begin
Task: Create a new script adding at least one case for each one of the arithmetic,
comparison, assignment and logical operators, print them and also print
the result obtained. Add variables with numbers and strings.

This script prints the result of all logical operations with specified parameters.
=end

puts "The result of 2 > 4 && 100 == 50 is #{2 > 4 && 100 == 50}"
puts "The result of 6 >= 6 || 10 < 50 is #{6 >= 6 || 10 < 50}"
puts "The result of !(6 >= 86) is #{!(6 >= 86)}"

result_1 = false or true
puts "The result of a = false or true is #{false or true} but the value of a is #{result_1}"
result_2 = true and false
puts "The result of a = false or true is #{false and true} but the value of a is #{result_2}"
result_3 = true
puts "If a = true then the value of 'not a' is #{not result_3}"
