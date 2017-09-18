=begin
Using class variables :
Create a class named father
 father should have some amount of money. 
Add 3 different child classes that are going to take some of the money.
Print the amount that each child is taking
Print the amount of money that Father have at the end.		                	
=end
class Father
	attr_accessor :money
	def initialize(money)
  	@money = money
  end
end

class ChildOne < Father
	def initialize(money)
    super(money)
  end
 end

  class ChildTwo < Father
	def initialize(money)
  	super(money)
  end
 end

  class ChildThree < Father
	def initialize(money)
	super(money)
  end
end

father = Father.new(1000)
puts "the father has: #{father.money}"
childOne = ChildOne.new(100)
father.money -=childOne.money
puts ""
puts "the first child takes 100"
puts "the first child has: #{childOne.money}"
puts "the father has: #{father.money}"

puts ""
childTwo = ChildTwo.new(200)
father.money -=childTwo.money
puts "The second child takes 200"
puts "the second child has: #{childTwo.money}"
puts "the father has: #{father.money}"

puts ""
childThree = ChildThree.new(300)
father.money -=childTwo.money
puts "The third child takes 300"
puts "the third child has: #{childThree.money}"
puts "the father has: #{father.money}"
