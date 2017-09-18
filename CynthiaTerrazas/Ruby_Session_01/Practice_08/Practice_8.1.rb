=begin
Using class variables:
Create a class named father
father should have some amount of money.
Add 3 different child classes that are going to take some of the money.
Print the amount that each child is taking
Print the amount of money that Father have at the end.
=end
class JoseFather
   attr_accessor :money
   def initialize(money)
     @money = money
   end
  def give_money(mount)
    @money=@money-mount
  end
  end


class LuisChild < JoseFather
   def initialize(money)
     super(money)
     end
   end


 class AnaChild < JoseFather
   def initialize(money)
     super(money)
     end
   end


 class JuanChild < JoseFather
   def initialize(money)
     super(money)
     end
  end


father = JoseFather.new(5000)
puts "Jose father has: #{father.money}"

luis = LuisChild.new(1000)
giveluis=father.give_money(1000)
puts "Luis son of Jose has: #{luis.money}"
puts "Jose father now has: #{giveluis}"

ana = AnaChild.new(1500)
giveana=father.give_money(1500)
puts "Ana daughter of Jose has: #{ana.money}"
puts "Jose father now has: #{giveana}"

juan = JuanChild.new(200)
givejuan=father.give_money(200)
puts "Juan son of Jose has: #{juan.money}"
puts "Jose father now has: #{givejuan}"
