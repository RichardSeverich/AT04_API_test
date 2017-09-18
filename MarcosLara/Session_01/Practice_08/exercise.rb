=begin
Create a class named father
  - father should have some amount of money.
Add 3 different child classes that are going to take some of the money.
  - Print the amount that each child is taking
  - Print the amount of money that Father have at the end.
=end

class Father
  @@money = 0
  def initialize(money)
    @@money = money
  end

  def discount_money(quantity)
    @@money -= quantity
  end

  def money
    @@money
  end
end

class ChildOne
  @@money_quantity = 100
  def initialize (father)
    @father = father
  end

  def take_money
      if @father
        @father.discount_money(@@money_quantity)
      end
  end
end

class ChildTwo
  @@money_quantity = 200
  def initialize (father)
    @father = father
  end

  def take_money
    if @father
      @father.discount_money(@@money_quantity)
    end
  end
end

class ChildThree
  @@money_quantity = 300
  def initialize (father)
    @father = father
  end

  def take_money
    if @father
      @father.discount_money(@@money_quantity)
    end
  end
end

puts 'The object Father is created with 1000$ of money'
father = Father.new(1000)
puts 'The object Child One is created'
child_one = ChildOne.new(father)
puts 'The object Child Two is created'
child_two = ChildTwo.new(father)
puts 'The object Child Three is created'
child_three = ChildThree.new(father)
puts 'The object Child One take 100$'
child_one.take_money
puts 'The object Child One take 200$'
child_two.take_money
puts 'The object Child One take 300$'
child_three.take_money
puts "The Father remaining money is #{father.money}"
