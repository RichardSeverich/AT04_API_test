=begin
Practice 07
Create a ruby class with 1 method :
	Insert user name and Age ,ask by prompt.
Create another ruby class with 1 method to :
Calculate and print the age in minutes, this “age” is going to receive as a parameters of the class

Instance the class to get the values of the first method and assign this value to a variable.
This variable needs to be send to the instance of the second class as a parameter to perform the calculation
=end
class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Calculate
  MINUTES = 525600

  def ageInMinutes(age)
     age * MINUTES
  end
end

print "Introduce your name: "
name = gets.chomp
print "Introduce your age: "
age = gets.to_i

person = Person.new(name, age)
calc = Calculate.new()
resp=calc.ageInMinutes(person.age)
puts "The age of #{person.name} is #{person.age} year in minutes is: #{resp} "
