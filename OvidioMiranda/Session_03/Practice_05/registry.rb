=begin
Session 3 - Practice 5
Create a class that is going to receive :
1. The amount of persons to register
2. One method to get the Name and ID for all the persons registered
3. One method that consider:
  1. for each one of the Names, change them to upper case
  2. print the position and the Name of each person registered
  3. Save the name in upper case into an array, return the array
4. One method that According the amount of persons registered say “good bye <name>” to each one until all persons are gone.
=end


class Practice5
  attr_reader :persons_hash

  def register
    @persons_hash = Hash.new
    puts 'How many people want to register'
    print 'Enter the amount of persons to register:'
    number_persons = gets.to_i
    number_persons.times do |index|
      puts "Person number #{index+1}:"
      print 'Id:'
      key = gets.chomp
      print 'Name:'
      value = gets.chomp
      @persons_hash.store(key, value)
    end
  end
  #2. One method to get the Name and ID for all the persons registered
  def show_registered_people
    puts "Registered People"
    @persons_hash.each {|id, value| puts "Id: #{id} Value: #{value}"}
  end

  #3. One method that consider:
  def make_operations
    #1. for each one of the Names, change them to upper case.
    array_new= @persons_hash.map {|id, value| value.upcase}
    #2. print the position and the Name of each person registered
    puts "The position and the Name of each person registered"
    @persons_hash.each_with_index do |(id, value), index|
      puts "The index #{index} - Name:#{value}"
    end
    #3. Save the name in upper case into an array, return the array
    return array_new
  end

  #4. One method that According the amount of persons registered say “good bye <name>” to each one until all persons are gone.
  def say_goodbye
    @persons_hash.each {|id, value| puts "Goodbye #{value}"}
  end

end

sample = Practice5.new
sample.register
sample.show_registered_people
new_array= sample.make_operations
pust "Names of persons registered in uppercase"
p new_array
sample.say_goodbye


