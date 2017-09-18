class Practice1
  #Some information about the program.
  puts "This program is part of practice 1 and it's about arithmetics and comparation conditions."
  print "In order to begin pleace insert one number between 0 to 100 just to complete the purpose: "
  #A do while to avoid user missunderstanding for number 1.
  loop do
    @num1 = gets.chomp.to_i
    puts "You should insert a number between 0 and 100 try again: " if (@num1 >= 100 || @num1 <= 0)
    break if @num1 >= 0 && @num1 <= 100
  end
  print "Please insert the second number between 0 and 100 to make some calculations: "
  #A do while to avoid user missunderstanding for number 2.
  loop do
    @num2 = gets.chomp.to_i
    puts "You should insert a number between 0 and 100 try again: " if (@num2 >= 100 || @num2 <= 0)
    break if @num2 >= 0 && @num2 <= 100
  end
  #Here is the arithmetics operations
  puts "************************************************************"
  puts "Ok! the first number #{@num1} is greater than #{@num2}" if (@num1 > @num2)
  puts "Ok! the second number #{@num2} is greater than #{@num1}" if (@num2 > @num1)
  puts "The sum between first number and second number is: #{@num1 + @num2}"
  puts "The substraction of number1 and number2 is: #{@num1 - @num2}"
  puts "The division between number1 and number2 is: #{@num1.to_f / @num2}" if (@num2 > 0)
  puts "Is not posible get a division because number2 is 0" if (@num2 == 0)
  puts "The multiplication of number1 and number2 is: #{@num1 * @num2}"
  puts "************************************************************"
  puts "We end the purpose of this program thanks."
end