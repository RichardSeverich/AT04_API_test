class Practice
  print "Please insert an expression: "
  number = gets.strip.to_s
  #This operation extract the numbers for the expression and convert it to an integer
  puts "The float number is :#{(number.gsub(/[^0-9]/, '').to_f)/100}" if number.gsub(/[^0-9]/, '') != ''
  puts "The expression doesn't have any number" if number.gsub(/[^0-9]/, '').eql?('')

  puts "********************************"
  puts "Thanks."
end