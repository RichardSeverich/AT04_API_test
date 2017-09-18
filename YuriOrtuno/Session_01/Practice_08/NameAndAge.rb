class Person
  attr_accessor :name
  attr_accessor :age
  def initialize name, age
    @name = name
    @age = age
  end
end

class CalculatePerso
  def convertage(person)
    @minutes = person.age * 365 * 24 * 60
  end
end

person = Person.new(gets.chomp,gets.chomp.to_i)
convert = CalculatePerso.new()

puts "your name is : 	#{person.name} "
puts "Your age in minutes is	: 	#{convert.convertage(person)} "
