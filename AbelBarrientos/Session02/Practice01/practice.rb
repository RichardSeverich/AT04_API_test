=begin
Create one class named Person
1. This class should have one setter to the name.
2. One getter to the greet for the person e.g. Hi <name>
3. One setter and getter to a special message e.g. <name> Have a nice day.

You can directly print the message in the instance variable or out of the class
=end

class Person

  attr_writer :name
  attr_reader :special_message

  def greet
    "Hi #{@name}"
  end

  def special_message
    "#{@name} Have a nice day"
  end

end

person = Person.new
puts person.name="John"
puts person.greet
puts person.special_message
