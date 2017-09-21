=begin
Practice 08
Using class variables :
_Create a class named father
  father should have some amount of money.
_Add 3 different child classes that are going to take some of the money.
 Print the amount that each child is taking
 Print the amount of money that Father have at the end.
=end
class Father
  attr_accessor :name
  attr_accessor :money
  @@money=0

  def initialize(name, money)
    @name = name
    @@money = money
  end

  def to_s
    puts "The father #{@name} you have $#{@@money}"
  end
end

class Child < Father
  attr_reader :name, :take
  @take=0

  def initialize(name, take)
    @name = name
    @take = take
  end

  def takeMoney()
    if @@money >= @take
      @@money -= @take
    else
      puts "There is no such money available"
    end
  end

  def to_s
    puts "The child #{@name} is taking $#{@take}"
  end
end


def main
  father = Father.new('Mr.Miranda', 100)
  father.to_s

  puts "#### Child One ####"
  childOne = Child.new('Peter', 20)
  childOne.takeMoney
  childOne.to_s
  father.to_s

  puts "#### Child Two ####"
  childTwo = Child.new('Ana', 30)
  childTwo.takeMoney
  childTwo.to_s
  father.to_s

  puts "#### Child Three ####"
  childThre = Child.new('Bryan', 10)
  childThre.takeMoney
  childThre.to_s
  father.to_s
end

main
