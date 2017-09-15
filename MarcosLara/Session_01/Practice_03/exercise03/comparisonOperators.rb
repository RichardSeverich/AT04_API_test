=begin
Task: Create a new script adding at least one case for each one of the arithmetic,
comparison, assignment and logical operators, print them and also print
the result obtained. Add variables with numbers and strings.

This script prints the result of all comparison operations with specified parameters
using the ternary operator for represent the results.
=end

puts "Is this logical expression 10 == 10 true? #{10 == 10 ? 'Yes' : 'No'}"
puts "Is this logical expression 10 != 10 true? #{10 != 10 ? 'Yes' : 'No'}"
puts "Is this logical expression 100 > 2 true? #{100 > 2 ? 'Yes' : 'No'}"
puts "Is this logical expression 4 <= 2 true? #{4 <= 2 ? 'Yes' : 'No'}"
puts "Is this logical expression 6 >= 2 true? #{6 >= 2 ? 'Yes' : 'No'}"
puts "In this expression 2 > 10 the number 2 is #{(2 <=> 10) == 0 ? 'equals' : (2 <=> 10) == 1 ? 'greater' : 'minor'}"
puts "In this expression 3 > -1 the number 3 is #{(3 <=> -1) == 0 ? 'equals' : (3 <=> -1) == 1 ? 'greater' : 'minor'}"

puts "The range -10...10 contains 0? #{(-10...10) === 0 ? 'Yes' : 'No'}"
puts "The range -10..10 contains 10? #{(-10..10) === 10 ? 'Yes' : 'No'}"
puts "The range -10...10 contains 10? #{(-10...10) === 10 ? 'Yes' : 'No'}"

puts "Is 0.0 equals to 0? #{0.0.eql?(0) ? 'Yes' : 'No'}"
puts "Is 0.0 equals to 0.0? #{0.0.eql?(0.0) ? 'Yes' : 'No'}"
