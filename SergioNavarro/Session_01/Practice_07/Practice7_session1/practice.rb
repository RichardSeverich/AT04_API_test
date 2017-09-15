#First class to recolect information.
class Practice
  #attr_reader to get the age
  attr_reader :age
  def initialize
  end
   #to set the Data
  def recolect
    print "Ingrese nombre: "
    @name = gets.chomp
    print "Ingrese edad: "
    @age = gets.chomp.to_f
  end
end

class Practice2
  def initialize (age)
    @age = age
  end
  #Calculate the age in minutes
  def calculate
    puts "The age in minutes is: #{@age * 525600}"
  end
end

uno = Practice.new
uno.recolect
dos = Practice2.new(uno.age)
dos.calculate

puts "Done, Thanks"