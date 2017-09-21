class Person
  attr_writer :name
  attr_reader :special_message

  def greet
    puts "Hi #{@name}"
  end

  def special_message
    puts "#{@name} Have a nice day"
  end
  end

person = Person.new
puts person.name='JJ'
puts person.greet
puts person.special_message