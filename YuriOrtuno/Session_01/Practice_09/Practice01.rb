class Father
  attr_accessor :money
  def initialize money
    @@money = money
  end

  def howMoneyExist
    @@money
  end
end

class SonOne < Father
  def initialize moneyTake
    @moneyTake = moneyTake
    @@money -= @moneyTake
  end

  def howtake
    @moneyTake
  end

end

class SonTwo < Father
  def initialize moneyTake
    @moneyTake = moneyTake
    @@money -= @moneyTake
  end

  def howtake
    @moneyTake
  end
end

class SonThree < Father
  def initialize moneyTake
    @moneyTake = moneyTake
    @@money -= @moneyTake
  end

  def howtake
    @moneyTake
  end
end


father = Father.new(100.0)
puts "Father have #{father.howMoneyExist}"
printf "SonOne take "
sonOne = SonOne.new(gets.chomp.to_f)
puts "his father"
printf "SonTwo take "
sonTwo = SonTwo.new(gets.chomp.to_f)
puts "his father"
printf "SonThree take "
sonThree = SonThree.new(gets.chomp.to_f)
puts "his father"

puts "sonOne take: #{sonOne.howtake}"
puts "sonOne take: #{sonTwo.howtake}"
puts "sonOne take: #{sonThree.howtake}"

puts "the end his father have: #{father.howMoneyExist}"