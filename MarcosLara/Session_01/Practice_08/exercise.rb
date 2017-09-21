=begin
Create a class named father
  - father should have some amount of money.
Add 3 different child classes that are going to take some of the money.
  - Print the amount that each child is taking
  - Print the amount of money that Father have at the end.
=end

class Father
  @@money = 0

  def money_amount(money)
    @@money = money
  end

  def self.money
    @@money
  end
end

class ChildOne < Father
  def take_money(quantity)
    @@money -= quantity
  end
end

class ChildTwo < Father
  def take_money(quantity)
    @@money -= quantity
  end
end

class ChildThree < Father
  def take_money(quantity)
    @@money -= quantity
  end
end

puts 'The Father class instance is created with 1000$ of money'
father = Father.new.money_amount(1000)

puts 'The Child One instance is created'
child_one = ChildOne.new
puts 'The Child Two instance is created'
child_two = ChildTwo.new
puts 'The Child Three instance is created'
child_three = ChildThree.new

puts 'The object Child One take 100$'
child_one.take_money(100)
puts 'The object Child One take 200$'
child_two.take_money(200)
puts 'The object Child One take 300$'
child_three.take_money(300)

puts "The Father remaining money is #{Father.money}"