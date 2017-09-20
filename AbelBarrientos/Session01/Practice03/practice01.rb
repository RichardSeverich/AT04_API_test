=begin
1. Take your previous script and change calculations for variables.
This script shows the basic uses of operators in Ruby.
Using:
  Arithmetic, Comparison and Logical Operators
=end

puts "Is it true 5 > 2? #{5 > 2}"
puts "Is it true 10 / 5 > 1? #{10 / 5 > 1}"
a= 5
b= 2
puts "What is it 5 + 2? = #{a + b}"
puts "What is it 5 - 2? = #{a - b}"
puts "What is it 5 / 2? = #{a / b}"
puts "What is it 5 * 2? = #{a * b}"
puts 3 + 2 < 5 - 7
fact = 1 * 2 * 3 * 4 * 5

puts "I will print factorial to 5."
puts "Fact(1) = #{1}"
puts "Fact(2) = #{1 * 2}"
puts "Fact(3) = #{1 * 2 * 3}"
puts "Fact(4) = #{1 * 2 * 3 * 4}"
puts "Fact(5) = #{fact}"
square = 12**2
puts "Fact(5) is > than 12*12? #{fact > (12 * 12)}"
puts "Fact(5) + 24 and 12^2 equals? #{(fact + 24) == square}"
puts "#{3 + 2 > 6 && false}"
puts "#{3 + 2 > 6 || true}"
