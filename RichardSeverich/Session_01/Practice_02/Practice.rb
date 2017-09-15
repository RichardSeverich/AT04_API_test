=begin 
Evaluation order of operators				from
() [] -> .								left to right	
! ~ ++ -- + - (type) * & sizeof			right to left	
* / %									left to right		
+ -										left to right	
<< >>									left to right	
< <= > >=								left to right		
== !=									left to right		
&										left to right		
^										left to right		
|										left to right		
&&										left to right		
||										left to right		
?:										right to left	
= += -= *= /= %= &= ^= |= <<= >>=		right to left	
,										left to right	
=end 
puts "I will now count my fruits:"
puts "Bananas:  #{25 + 30 / 6}"
puts "apples: #{100 - 25 * 3 % 4}"
puts "Now I will count the potato:"
puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6
puts "Is it true that 3 + 2 < 5 - 7?"
puts 3 + 2 < 5 - 7
puts "What is 3 + 2? It is #{3 + 2}"
puts "What is 5 - 7? It is #{5 - 7}"
