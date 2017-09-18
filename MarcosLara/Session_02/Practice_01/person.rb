=begin
Create one class named Person
 - This class should have one setter to the name.
 - One getter to the greet for the person e.g. Hi <name>
 - One setter and getter to a special message e.g. <name> Have a nice day.
=end

class Person
  attr_writer :name
  attr_reader :special_greet

  def initialize(name = 'nobody')
    @name = name
  end

  def greet
    @greet = "Hello #{@name}"
  end

  def special_greet=(greet)
    @special_greet = "#{@name} #{greet}"
  end
end

person = Person.new
person.name = 'Jon'
puts "The person greet is: #{person.greet}"

person.special_greet = 'have a nice day'
puts "The person special greet is: #{person.special_greet}"
