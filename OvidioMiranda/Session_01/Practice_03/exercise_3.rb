=begin
3.-Create a new script adding at least one case for each one of
the arithmetic, comparison, assignment and logical operators, print them and also print the result obtained.
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

#Assignment operators
valueOne = 10
valueTwo = 5
puts "#{valueOne} +=#{valueTwo}  = #{valueOne += valueTwo}"
puts "#{valueOne} -= #{valueTwo}   = #{valueOne -= valueTwo}"
puts "#{valueOne} *=#{valueTwo}   = #{valueOne *= valueTwo}"
puts "#{valueOne} /= #{valueTwo}   = #{valueOne /= valueTwo}"
puts "#{valueOne} %= #{valueTwo}   = #{valueOne %= valueTwo}"
puts "#{valueOne} **= #{valueTwo}   = #{valueOne **= valueTwo}"


#Logical operators
var1=true
var2=false
puts "(#{var1} && #{var2}) is: #{var1 && var2}"
puts "(#{var1} and #{var2}) is: #{var1 and var2}"
puts "(#{var1} || #{var2}) is: #{var1 || var2}"
puts "(#{var1} or #{var2}) is: #{var1 or var2}"
puts "!(#{var1} && #{var2}) is: #{!(var1 && var2)}"
puts "not(#{var1} && #{var2}) is: #{not(var1 && var2)}"


