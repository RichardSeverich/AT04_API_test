=begin
3. Create a new script adding at least one case for each one of the arithmetic,
comparison, assignment and logical operators, print them and also print the
result obtained.
=end

hundred = 100
fifty = 50
car = "car"
bus = "bus"

#Arithmetic
puts "Adding #{hundred} + #{fifty} = #{hundred + fifty}"
puts "Substracting #{hundred} - #{fifty} = #{hundred - fifty}"
puts "Multiplying #{hundred} * #{fifty} = #{hundred * fifty}"
puts "Dividing #{hundred} / #{fifty} = #{hundred / fifty}"
puts "Adding car and bus: #{car + bus}"
puts "Multiplying bus 3 times: #{bus * 3}"

#Comparison
puts "Is #{hundred} > than #{fifty}? #{hundred > fifty}"
puts "Is #{hundred} <= than #{fifty}? #{hundred <= fifty}"
puts "Is #{hundred} == than #{fifty}? #{hundred == fifty}"
puts "Is #{car} == than #{bus}? #{car == bus}"
puts "Is #{car} equal than #{bus}? #{car.equal? bus}"
puts "Is #{car} length equal? than #{bus} length? #{car.length == bus.length}"

#Assignment
puts "Variable c is equal hundred + fifty: #{c = hundred + fifty}"
puts "Double c is: #{c+=c}"
puts "Minus hundred: #{c-= hundred}"

#Logical
puts "Is #{fifty}*4 > #{hundred}+#{fifty} AND length of car equals to length of bus: #{fifty * 4 > hundred + fifty && car.length == bus.length} "
puts "Is not #{fifty}*4 > #{hundred}+#{fifty} AND length of car equals to length of bus: #{!(fifty * 4 > hundred + fifty) && car.length == bus.length} "
puts "Is #{fifty}*4 > #{hundred}+#{fifty} OR length of car equals to length of bus: #{fifty * 4 > hundred + fifty || car.length == bus.length} "
