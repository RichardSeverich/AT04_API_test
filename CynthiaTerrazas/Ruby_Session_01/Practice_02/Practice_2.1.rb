
=begin
Create a script where you can print numbers and arithmetic result using comparison operators
Add a multiline comment at the beginning giving a short description of your script.
=end
class Exercise01
=begin
Go out to eat with friends and everyone pay for their consumption.
this is an example for proving math operators in ruby.

this is the menu for today in the restaurant, they can choose between two options.
  # entry costs
  green salad 10 bs
  cheese salad 15 bs
  # soup
  tomato soup 12 bs
  chicken soup 15 bs
  # main course
  silpancho 30 bs
  piquemacho 45 bs
  # drinks
  juice 16 bs
  soda 12 bs
  # dessert
 ice cream 25bs
  cake 22bs
=end

  #ana eat green salad, silpancho, soda, ice cream.
  puts"What is ana bill? It is #{ 10+ 30 + 12 + 25 } Bs"

  #ariel eat cheese salad, tomato soup, piquemacho, soda, ice cream.

  puts "What is ariel bill? It is #{ 15 + 12 + 45 + 16 + 25} Bs"

  #luis eat cheese salad, chicken soup, piquemacho, juice, cake.

  puts "What is luis bill? It is #{ 15 + 15 + 45 + 16 + 22 } Bs"

  #monica eat green salad, piquemacho, juice, cake.

  puts "What is her bill? It is #{ 10 + 45 + 16 + 22 } Bs"


  puts "total bill it is:  #{10+ 30 + 12 + 25 +15 + 12 + 45 + 16 + 25 + 15 + 15 + 45 + 16 + 22 +10 + 45 + 16 + 22}"

  #the tip in the restaurant is 15% of the total bill

  puts "The tip is: #{((10+ 30 + 12 + 25 +15 + 12 + 45 + 16 + 25 + 15 + 15 + 45 + 16 + 22 +10 + 45 + 16 + 22)* 15 )/100}"

  # the men propose that to avoid problems of calculations, that the account with the tip be divided among the four if an exact amount for each one else they pay the tip.

  puts " the new bill is exactly for each one? #{(10+ 30 + 12 + 25 +15 + 12 + 45 + 16 + 25 + 15 + 15 + 45 + 16 + 22 +10 + 45 + 16 + 22 + (((10+ 30 + 12 + 25 +15 + 12 + 45 + 16 + 25 + 15 + 15 + 45 + 16 + 22 +10 + 45 + 16 + 22)* 15 )/100))%4 == 0}"

  # finally they pay

  puts "Ana pay:#{10+ 30 + 12 + 25}"
  puts "Ariel pay:#{(15 + 12 + 45 + 16 + 25)+((((10+ 30 + 12 + 25 +15 + 12 + 45 + 16 + 25 + 15 + 15 + 45 + 16 + 22 +10 + 45 + 16 + 22)* 15 )/100)/ 2)}"
  puts "Luis pay:#{(15 + 15 + 45 + 16 + 22) + ((((10+ 30 + 12 + 25 +15 + 12 + 45 + 16 + 25 + 15 + 15 + 45 + 16 + 22 +10 + 45 + 16 + 22)* 15 )/100)/ 2)}"
  puts "Monica pay:#{10 + 45 + 16 + 22}"


end