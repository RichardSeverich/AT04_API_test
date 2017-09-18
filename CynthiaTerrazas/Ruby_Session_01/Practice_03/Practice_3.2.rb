
=begin
Add some line in the middle of your script that is referring to a variable that doesn’t exist.
 Run the file and please explain the error displayed.

=end
class Practice02
  #this is the menu for today, we can choose between two options.
  # entry
  cost_green_salad=10
  cost_cheese_salad=15

  # soup
  cost_tomato_soup=12
  cost_chicken_soup=15

  # main course
  cost_silpancho=30
  cost_piquemacho=45

  # drink
  cost_juice=16
  cost_soda=12
  # dessert
  cost_ice_cream=25
  cost_cake=22

  #ana eat green salad, silpancho, soda, ice cream.
  ana_bill=cost_green_salad + cost_silpancho + cost_soda + cost_ice_cream
  puts "What is ana bill? It is #{ ana_bill } Bs"

  #ariel eat cheese salad, tomato soup, piquemacho, soda, ice cream.
  ariel_bill= cost_cheese_salad + cost_tomato_soup + cost_piquemacho + cost_juice + cost_ice_cream
  puts "What is ariel bill? It is #{ ariel_bill} Bs"

  #luis eat cheese salad, chicken soup, piquemacho, juice, cake.
  luis_bill=cost_cheese_salad + cost_chicken_soup + cost_piquemacho + cost_juice + cost_cake
  puts "What is luis bill? It is #{ luis_bill } Bs"

  #monica eat green salad, piquemacho, juice, cake.
  monica_bill=cost_green_salad + cost_piquemacho + cost_juice + cost_cake
  puts "What is her bill? It is #{ monica_bill } Bs"


  puts "total bill it is:  #{ana_bill + ariel_bill + luis_bill + monica_bill}"

  #the tip in the restaurant is 15% of the total bill
  tip =((ana_bill + ariel_bill + luis_bill + monica_bill)* 15 )/100
  puts "The tip is: #{tip}"

  # the men propose that to avoid problems of calculations, that the account with the tip be divided among the four if an exact amount for each one else they pay the tip.

  puts " the new bill is exactly for each one? #{(ana_bill + ariel_bill + luis_bill + monica_bill + tip)%4 == 0}"

  # finally they pay

  puts "Ana pay:#{ana_bill}"

  #-------------------------------------------------------------
  #ERROR!!!  undefined local variable or method `half_tip' for Practice 2.2 :Class (NameError)
  puts "Ariel pay:#{ariel_bill + half_tip}" # this is the error because 'half_tip' is undefined local variable  for Practice 2.2 Class. this variable does not exist.
  #-------------------------------------------------------------

  puts "Luis pay:#{luis_bill + tip / 2}"
  puts "Monica pay:#{monica_bill}"


end