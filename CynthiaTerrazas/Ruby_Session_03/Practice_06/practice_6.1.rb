=begin
Create a class that is going to receive :
The amount of persons to register
One method to get the Name and ID for all the persons registered
One method that consider:
 for each one of the Names, change them to upper case
 print the position and the Name of each person registered
Save the name in upper case into an array, return the array
One method that According the amount of persons registered say “good bye <name>” to each one until all persons are gone.
=end
class RegisterPersons
  def register
    puts "how many people do you want to register"
    tam=gets.chomp.to_i

    @persons=Hash.new
    tam.times do |value|
      puts "please enter the id of the person"
      id=gets.chomp.to_i

      puts "please enter the name of the person"
      name=gets.chomp.to_s

      @persons.store(id,name)
    end
    return @persons
  end

  def print_position_name()
    @persons.each_with_index {|(id,name),index| puts " #{name} is in the #{index} position"}
  end

  def show_names()
    @arr= @persons.map{|(id,name)| name.upcase}
    p @arr
  end

  def bye()
    @arr.each{|name| puts "good bye #{name}"}
  end

end

reg=RegisterPersons.new
reg.register
reg.print_position_name
reg.show_names
reg.bye