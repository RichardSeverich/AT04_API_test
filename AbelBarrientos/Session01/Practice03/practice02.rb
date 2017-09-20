=begin
2. Add some line in the middle of your script that is referring to a variable
that doesn’t exist. Run the file and please explain the error displayed.

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

puts "#{unknown}"

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

=begin
AbelBarrientos/Session01/Practice03/practice02.rb:21:in `<main>': undefined
local variable or method `unknown' for main:Object (NameError)
The error says that the unknown variable is not defined.
It is used on puts, but was never initialized.
=end
