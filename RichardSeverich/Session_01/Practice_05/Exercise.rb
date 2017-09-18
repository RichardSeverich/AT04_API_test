=begin
Write a script similar to :
print "Give me a number: " 
number = gets.chomp.to_f 
puts “The floating number is : #{number}."

Consider to :
Insert at least 4 different types of strings (number, strings with number, number with string, etc) 
and print them as floating number							                	
=end

def print(number)
number = number.to_f 
bigger = number * 100 
return bigger
end

puts "A bigger number of 10 is #{print('10')}."
puts "A bigger number of abc10 is #{print('abc10')}."
puts "A bigger number of 10abc is #{print('10abc')}."
puts "A bigger number of abc10abc is #{print('abc10abc')}."
puts "A bigger number of abc is #{print('abc')}."

=begin  
the output obtained is:
$ ruby Practice.rb
$ ruby Practice.rb
A bigger number of 10 is 1000.0.
A bigger number of abc10 is 0.0.
A bigger number of 10abc is 1000.0.
A bigger number of abc10abc is 0.0.
A bigger number of abc is 0.0.
=end
