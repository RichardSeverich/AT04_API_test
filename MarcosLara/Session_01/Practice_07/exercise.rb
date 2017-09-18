=begin
Create a ruby class with 1 method :
  - Insert user name and Age, ask by prompt.
Create another ruby class with 1 method to :
  - Calculate and print the age in minutes, this “age” is going to receive as a parameters of the class

1. Instance the class to get the values of the first method and assign this value to a variable.
2. This variable needs to be send to the instance of the second class as a parameter to perform the calculation.
=end

class Person
  attr_reader :name
  attr_reader :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

class CalculateAge
  def initialize(age)
    @age = age
  end

  def calculate_minutes
    @age * 365 * 24 * 60
  end
end

puts 'Enter name:'
name = gets.chomp
puts 'Enter age:'
age = gets.chomp.to_i

person = Person.new(name, age)
calculation = CalculateAge.new(person.age)
puts "The age of #{person.name} in minutes is #{calculation.calculate_minutes}"