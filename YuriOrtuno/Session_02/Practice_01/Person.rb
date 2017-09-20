class NamePerson

  def setName name
    @name=name
  end

  def getName
    @name
  end

end

person = NamePerson.new()
person.setName(gets.chomp)

puts "Hi #{person.getName}"
puts "#{person.getName} Have a nice day"
