=begin
Write a script similar to :
print "Give me a number: "
number = gets.chomp.to_f
puts “The floating number is : #{number}."

Consider to :
Insert at least 4 different types of strings (number, strings with number, number with string, etc)
and print them as floating number.

=end

def float_of(number)
  number.to_f
end

print "Give me a number: "
number = gets.chomp.to_f
puts "The floating number is : #{number}."
puts "The floating number of '100abc' is : #{float_of '100abc'}"
puts "The floating number of 'abc100' is : #{float_of 'abc100'}"
puts "The floating number of 'ab1010cd' is : #{float_of 'ab1010cd'}"
puts "The floating number of '20cd30ab' is : #{float_of '20cd30ab'}"
