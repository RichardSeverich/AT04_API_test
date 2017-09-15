=begin
Practice 05
 Insert at least 4 different types of strings
(number, strings with number, number with string, etc) and print them as floating number.
=end
array = %w{12356 abc1235 1235abc abcde}
array.each do |element|
  puts "The floating number is : #{element.to_f}"
end
