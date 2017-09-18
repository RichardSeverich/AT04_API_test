=begin
Create a ruby class with 1 method :
	Insert user name and Age ,ask by prompt.
Create another ruby class with 1 method to :
Calculate and print the age in minutes, this “age” is going to receive as a parameters of the class

Instance the class to get the values of the first method and assign this value to a variable.
This variable needs to be send to the instance of the second class as a parameter to perform the calculation					                	
=end
class Person
  attr_accessor :name
  attr_accessor :age
  def initialize(name, age)
   @name = name
   @age = age
  end
end

class Convert
  def convertAgeToMinutes(person)
    @minutes = person.age * 365 * 24 * 60
  end
end

puts "enter your name"
name = gets.chomp
puts "enter your age"
age = gets.chomp.to_i
person = Person.new(name,age)
convert = Convert.new()
puts "your name is				: 	#{person.name} "
puts "Your age in minutes is	: 	#{convert.convertAgeToMinutes(person)} "
