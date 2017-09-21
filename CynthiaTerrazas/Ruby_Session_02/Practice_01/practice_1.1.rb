=begin
Create one class named Person
This class should have one setter to the name.
One getter to the greet for the person e.g. Hi <name>
One setter and getter to a special message e.g. <name> Have a nice day.

You can directly print the message in the instance variable or out of the class

=end

class Person

  attr_writer :name
  attr_reader :greet
  attr_writer :message
  attr_reader :message
   def initialize(name, greet, message)
     @name = name
     @greet = greet
     @message = message
   end

  def greetname
    @greet += @name
  end

  def specialmessage
    @name+=@message
  end
end

person= Person.new("Cynthia","Hello "," have a good day")
puts person.name ="Victoria"
puts person.greetname
     person.message =" have a nice day"
puts person.specialmessage