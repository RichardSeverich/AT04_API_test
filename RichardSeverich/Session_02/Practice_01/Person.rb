=begin
Create one class named Person
This class should have one setter to the name.
One getter to the greet for the person e.g. Hi <name>
One setter and getter to a special message e.g. <name>
You can directly print the message in the instance variable or out of the class		                	
=end
class Person
	attr_reader :name
	def initialize(name)
  	@name = name
  end

  def getter
  	"Hello #{@name} have a nice day"
  end
end

person = Person.new("Richard")
puts person.getter
puts "Hello #{person.name} have a nice day "
