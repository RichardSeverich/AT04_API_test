class Father
  attr_accessor :money
  def initialize money
    @@money = money
  end
end

class Child1 < Father
  def initialize take
    @take = take
  end

  def take_money
    @@money -= @take
  end

end

class Child2 < Father
  def initialize take
    @take = take
  end

  def take_money
    @@money -= @take
  end
end

class Child3 < Father
  def initialize take
    @take = take
  end

  def take_money
    @@money -= @take
  end
end

class Show < Father
  def initialize

  end
  def shower
    puts "The among of money at the end is: #{@@money}"
  end
end

#Father Class Instance
father = Father.new(100)
print "Insert How much the first child should take from Father? "
take1 = gets.chomp.to_i
child1 = Child1.new(take1)
print "Insert How much the second child should take from Father? "
take2 = gets.chomp.to_i
child2 = Child2.new(take2)
print "Insert How much the second child should take from Father? "
take3 = gets.chomp.to_i
child3 = Child3.new(take3)
show = Show.new
child1.take_money
child2.take_money
child3.take_money
show.shower





