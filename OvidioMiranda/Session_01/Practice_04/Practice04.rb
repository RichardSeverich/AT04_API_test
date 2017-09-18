=begin
Practice 04
 Insert at least 4 different types of string
 (number, strings with number, number with string, etc) and print them as integer.
=end

array = %w{12356 abc1235 1235abc abcde}
array.each do |element|
  puts element.to_i
end
