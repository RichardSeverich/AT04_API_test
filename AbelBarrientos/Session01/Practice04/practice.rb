=begin
Write a script similar to :
print "Give me a number: "
number = gets.chomp.to_i
bigger = number * 100
puts "A bigger number is #{bigger}."

Insert at least 4 different types of string
(number, strings with number, number with string, etc) and print them as integer.
=end

def bigger(number)
  number.to_i*100
end

print "Give me a number: "
number = gets.chomp.to_i
puts "A bigger number is #{bigger number}."

first_number = "200abc"
second_number = "abc23"
third_number = "ab23asd2343"
fourth_number = "123ab23cd"
puts "Another number is #{bigger first_number}"
puts "Another number is #{bigger second_number}"
puts "Another number is #{bigger third_number}"
puts "Another number is #{bigger fourth_number}"
