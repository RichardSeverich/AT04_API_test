=begin
Using class variables :
Create a class named father
1. father should have some amount of money.
2. Add 3 different child classes that are going to take some of the money.
3. Print the amount that each child is taking
4. Print the amount of money that Father have at the end.
=end

class Father

  @@amount_of_money

  def amount_of_money= amount_of_money
    @@amount_of_money = amount_of_money
  end

  def amount_of_money
    @@amount_of_money
  end

end

class Son < Father

  @amount

  def take amount
    @@amount_of_money -= amount
    @amount = amount
  end

end

class Daughter < Father

  @amount

  def take amount
    @@amount_of_money -= amount
    @amount = amount
  end

end

class Adopted < Father

  @amount

  def take amount
    @@amount_of_money -= amount
    @amount = amount
  end

end

father = Father.new
puts "Initial amount of money is #{father.amount_of_money= 5000}"

son = Son.new
puts "The son takes: #{son.take 200}"

daughter = Daughter.new
puts "The daughter takes: #{daughter.take 500}"

adopted = Adopted.new
puts "The adopted takes: #{adopted.take 50}"

puts "The father money remain is #{father.amount_of_money}"
