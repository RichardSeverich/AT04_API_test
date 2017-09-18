=begin
Write a script similar to :
print "Give me a number: "
number = gets.chomp.to_f
puts “The floating number is : #{number}."

Consider to :
Insert at least 4 different types of strings (number, strings with number, number with string, etc) and print them as floating number.

=end
  def calculate (number)
    number=number.to_f
    number * 100
  end

  puts "The result of the calculate method with the 100 is #{calculate('100')}"
  puts "The result of the calculate method with the x100 is #{calculate('x100')}"
  puts "The result of the calculate method with the 100x is #{calculate('100x')}"
  puts "The result of the calculate method with the x100x is #{calculate('x100x')}"
  puts "The result of the calculate method with the one is #{calculate('one')}"
