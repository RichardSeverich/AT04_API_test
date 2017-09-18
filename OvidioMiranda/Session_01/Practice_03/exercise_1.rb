=begin
1.- Take your previous script and change calculations for variables.
=end

# Arithmetic operators
addition = 8 + 9
subtraction = 35 - 15
multiplication = 3 * 9
division = 20 / 5
modulus = 22 % 3
exponent = 2 ** 8
puts "8 + 9 = #{addition}"
puts "35 - 15 = #{subtraction}"
puts "3 * 9 = #{multiplication}"
puts "20 / 5 = #{division}"
puts "22 % 3 = #{modulus}"
puts "2 ** 8 = #{exponent}"

# Comparison operators
a=10
b=5
c=10.0
range =(1...10)
puts "#{a} == #{b} ? #{a == b}"
puts "#{a} != #{b} ? #{a != b}"
puts "#{a} > #{b} ? #{a > b}"
puts "#{a} < #{b} ? #{a < b}"
puts "#{a} >= #{b} ? #{a >= b}"
puts "#{a} <= #{b} ? #{a <= b}"
puts "#{a} <=> #{b} ? #{a <=> b}"
puts "(#{range}) === #{b} ? #{range === b}"
puts "#{a}.eql?(#{c}) ? #{a.equal? c}"
