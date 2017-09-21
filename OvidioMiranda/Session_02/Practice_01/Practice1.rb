=begin
Practice 1
Create one class named Person
1.-This class should have one setter to the name.
2.-One getter to the greet for the person e.g. Hi <name>
3.-One setter and getter to a special message e.g. <name> Have a nice day.

  You can directly print the message in the instance variable or out of the class
=end
class Person
  attr_reader :name
  attr_writer :greetingMessage
  attr_accessor :specialMessage

  def initialize(name)
    @name = name.capitalize
  end

  def greet
    puts "#{@greetingMessage.capitalize} #{@name}"
  end

  def specialGreet
    puts "#{@name} #{@specialMessage.downcase}"
  end
end
person = Person.new('Ovidio')
person.greetingMessage ='Hi'
person.greet
person.specialMessage='Have a nice day!'
person.specialGreet