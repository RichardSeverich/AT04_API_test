=begin
Create a ruby class with 1 method :
	Insert user name and Age ,ask by prompt.
Create another ruby class with 1 method to :
Calculate and print the age in minutes, this “age” is going to receive as a parameters
of the class

Instance the class to get the values of the first method and assign this value to a variable.
This variable needs to be send to the instance of the second class as a parameter to perform the calculation.
 be asked by prompt
=end

class Person
  attr_accessor :name
  attr_accessor :age

  def initialize (name,age)
    @name=name
    @age=age
  end
end

class CalculatePerson
  def initialize(age)
        @age = age
    end
  def calculate_age()
     @age * 365 * 24 * 60
  end
end

puts "Please enter your name"
name=gets.chomp.to_s
puts "Please enter your age"
age=gets.chomp.to_i
new_person=Person.new(name, age)
new_age=CalculatePerson.new(age)
puts "your name is : #{new_person.name} "
puts "Your age in minutes is : #{new_age.calculate_age()} "
