=begin
Create a script where you can print numbers and arithmetic result using comparison operators
This script shows the different comparators and arithmetic operators in ruby.
Take your previous script and change calculations for variables.
Add Variables:									                	
=end

TEN = 10
FIVE = 5
TWENTY_FIVE = 25


#Arithmetic operators
puts "Result of adding:      10 + 10 	: #{TEN + TEN}"
puts "Result of subtracting: 10 + 10 	: #{TEN - TEN}"
puts "Result of multiplying: 10 + 10 	: #{TEN*TEN}"
puts "Result of dividing:    10 + 10 	: #{TEN/TEN}"
puts "Result of multiplying: 10 + 10 	: #{FIVE%FIVE}"
puts "Result of multiplying: 10 + 10 	: #{TEN**TEN}"

#Comparison operators
puts "result of comparing with 10>10 	: #{TEN>TEN}"
puts "result of comparing with 10<10 	: #{TEN<TEN}"
puts "result of comparing with 10>=10 	: #{TEN>=TEN}"
puts "result of comparing with 10<=10 	: #{TEN<=TEN}"
puts "result of comparing with 10==10 	: #{TEN==TEN}"
puts "result of comparing with 10===10 	: #{TEN===TEN}"
puts "result of comparing with 10<=>10 	: #{TEN<=>TEN}"
puts "result of comparing with 10!=10 	: #{TEN!=TEN}"
puts "result of comparing with 10=~10 	: #{TEN=~TEN}"

#Assignment operators
a = 1
b = 2
puts "result of  = assignament	:#{c = a + b}"
puts "result of += assignament	:#{c += a}"
puts "result of -= assignament	:#{c -= a}"
puts "result of *= assignament	:#{c *= a}"
puts "result of /= assignament	:#{c /= a}"
puts "result of %= assignament	:#{c %= a}"
puts "result of **= assignament	:#{c **= a}"


True = true
False = false
#Logical operators
puts "result of true && false			: #{True && False}"
puts "result of true || false			: #{True || False}"
puts "result of true and false			: #{True and False}"
puts "result of true or false			: #{True or False}"
puts "result of !(true)					: #{!(True)}"
puts "result of not(true)				: #{not(True)}"

#Mix
puts "result of 5*5 - 5 > 25/5 + 5		: #{FIVE*FIVE - FIVE > TWENTY_FIVE/FIVE + FIVE}"
puts "result of 5*5 - 5 < 25/5 + 5		: #{FIVE*FIVE - FIVE < TWENTY_FIVE/FIVE + FIVE}"
puts "result of 5*5 - 5 >= 25/5 + 5		: #{FIVE*FIVE - FIVE >= TWENTY_FIVE/FIVE + FIVE}"
puts "result of 5*5 - 5 <= 25/5 + 5		: #{FIVE*FIVE - FIVE <= TWENTY_FIVE/FIVE + FIVE}"
puts "result of 5*5 - 5 == 25/5 + 5		: #{FIVE*FIVE - FIVE == TWENTY_FIVE/FIVE + FIVE}"
puts "result of 5*5 - 5 === 25/5 + 5	: #{FIVE*FIVE - FIVE === TWENTY_FIVE/FIVE + FIVE}"
puts "result of 5*5 - 5 <=> 25/5 + 5	: #{FIVE*FIVE - FIVE <=> TWENTY_FIVE/FIVE + FIVE}"
puts "result of 5*5 - 5 != 25/5 + 5		: #{FIVE*FIVE - FIVE != TWENTY_FIVE/FIVE + FIVE}"
puts "result of 5*5 - 5 =~ 25/5 + 5		: #{FIVE*FIVE - FIVE =~ TWENTY_FIVE/FIVE + FIVE}"

var1 = 10
var2 = 20
var3 = var1 + var2
puts "Result : #{var1+var2}"
puts "Result : #{var3}"
