=begin
Task: Write a script similar to :
print "Give me a number: "
number = gets.chomp.to_f
puts "The float value is #{number}."

Consider to :
Insert at least 4 different types of string (number, strings with number, number with string, etc)
and print them as integer.
=end

param_one = '153'
param_two = 'abc153'
param_three = '153abc'
param_four = 'abc'

#In this operation the conversion is performed normally
puts "The result of of the operation with the param_one is #{param_one.to_f}"

#In this operation the conversion discard all the string because start with letters.
puts "The result of of the operation with the param_two is #{param_two.to_f}"

#In this operation the conversion discards the letters located at the final of the string
puts "The result of of the operation with the param_two is #{param_three.to_f}"

#In this operation the conversion discards all the letters that are not numbers
puts "The result of of the operation with the param_two is #{param_four.to_f}"
