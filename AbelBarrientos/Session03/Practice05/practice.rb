class Person

  @hash_of_persons
  @number_of_persons
  def initialize number_of_persons
    @number_of_persons = number_of_persons
    @hash_of_persons = Hash.new
  end

  def insert_persons
    @number_of_persons.times do
      print "Input the person ID: "
      id = gets.chomp.to_i
      print "Input the person name: "
      name = gets.chomp
      @hash_of_persons.store id, name
    end
  end

  def print_persons
    p @hash_of_persons
  end

  def to_upper
    @hash_of_persons.each{|key, value| value.upcase}
    @hash_of_persons.each_with_index {|(key, value), index| puts "#{value} is on position: #{index}"}
    array = Array.new
    @hash_of_persons.map{|key, value| array.push value.upcase}
    array
  end

  def say_good_bye
    @hash_of_persons.each{|key, value| puts "Good bye #{value}"}
  end

end

person = Person.new 3
person.insert_persons
person.print_persons
p person.to_upper
person.say_good_bye
