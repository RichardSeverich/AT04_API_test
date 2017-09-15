class Practice
  #Some Description for of the program
  puts "In this practice you can insert numbers with string or string with numbers and return only the number as integer."
  print "Please insert an expression: "
  number = gets.strip.to_s
  #This operation extract the numbers for the expression and convert it to an integer
  puts "The number of the expression is :#{number.gsub(/[^0-9]/, '').to_i}" if number.gsub(/[^0-9]/, '') != ''
  puts "The expression doesn't have any number" if number.gsub(/[^0-9]/, '').eql?('')

  puts "********************************"
  puts "Thanks."
end