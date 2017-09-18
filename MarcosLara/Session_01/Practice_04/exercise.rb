=begin
Task: Write a script similar to :
print "Give me a number: "
number = gets.chomp.to_i
bigger = number * 100
puts "A bigger number is #{bigger}."

Consider to :
Insert at least 4 different types of string (number, strings with number, number with string, etc)
and print them as integer.
=end

param_one = '153'
param_two = 'abc153'
param_three = '153abc'
param_four = 'abc'

def mul_by_100 (number)
  number.to_i * 100
end

#In this operation the conversion is performed normally
puts "The result of of the operation with the param_one is #{mul_by_100(param_one)}"

#In this operation the conversion discard all the string because start with letters.
puts "The result of of the operation with the param_two is #{mul_by_100(param_two)}"

#In this operation the conversion discards the letters located at the final of the string
puts "The result of of the operation with the param_two is #{mul_by_100(param_three)}"

#In this operation the conversion discards all the letters that are not numbers
puts "The result of of the operation with the param_two is #{mul_by_100(param_four)}"
