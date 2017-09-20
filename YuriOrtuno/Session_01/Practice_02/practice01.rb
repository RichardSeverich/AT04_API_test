=begin
This script is the test of operators like
Arithmetic operator
logical operators
comparison operators
=end
#Examples
puts "I will now count my fruits:"
puts "Bananas: #{25 + 30 / 6}"
puts "apples: #{100 - 25 * 3 % 4}"
puts "Now I will count the potato:"
puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6
puts "Is it true that 3 + 2 < 5 - 7?"
puts 3 + 2 < 5 - 7
puts "What is 3 + 2? It is #{3 + 2}"
puts "What is 5 - 7? It is #{5 - 7}"


#Exercise
puts "test arithmetic operation sum: #{16 + 16} "
puts "test arithmetic operation rest: #{16 - 8} "
puts "test arithmetic operation multiplication: #{8 * 8} "
puts "test arithmetic operation division : #{16 / 8} "
puts "test arithmetic operation and modulo: #{16 % 2 == 0} "
puts "test exp: #{8 ** 2}"
puts "test exp with fraction: #{64 ** (1/2)}"
puts "test exp with decimal: #{64 ** (0.5)}"

puts "test operator == : #{(64 ** (0.5)) == 8}"
puts "test operator >=: #{64 >= (4 ** 2)}"
puts "test operator !=: #{64 != 63}"
puts "test operator <=: #{64 <= (4 ** 4)}"

puts "test operator <=>: #{64 <=> 64}"
puts "test operator <=>: #{64 <=> 56}"
puts "test operator <=>: #{64 <=> 96}"

puts "test true && false			: #{true && false}"
puts "test true || false			: #{true || false}"




