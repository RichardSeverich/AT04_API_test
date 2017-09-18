class Father

  @@money = 1000

  def initialize (money)
    @@money = money
  end

  def give_money (amount)
    @@money -= amount
  end

  def money
    @@money
  end
end

class Child1 < Father

  @@money_quantity = 100
  def initialize(father)
    @father = father
  end
  def take_money
    if @father
      @father.give_money(@@money_quantity)
    end
  end
end

class Child2 < Father
  @@money_quantity = 300
  def initialize(father)
    @father = father
  end
  def take_money
    if @father
      @father.give_money(@@money_quantity)
    end
  end
end

class Child3 < Father

  @@money_quantity = 500
  def initialize(father)
    @father = father
  end
  def take_money
    if @father
      @father.give_money(@@money_quantity)
    end
  end
end
father1 = Father.new(@money)
child1 = Child1.new(@father)
child1.take_money
child2 = Child2.new(@father)
child2.take_money
child3 = Child3.new(@father)
child3.take_money
puts"The father give money to his child and now have #{father1.money} of money"

