#Following the suggestions for Format is:
#Float before send to any class or method.
print "Inser a number to make calculations: "
var = gets.chomp.to_f
puts var
#For classes, getters an setters suggestions are:
#Always make attr_accessor.
#If is needed a initialize has a constuctor.
#Always for every class make a Ruby_doc.
class Practice
  attr_accessor :param1, :param2
  #Make sure that you use only variables for the class in the class
  def initialize param1, param2
    @param1 = param1
    @param2 = param2
  end

  def any_method param3, param4
    puts "Here #{param3}, #{param4}"
  end
end

param1 = 123
param2 = "Hey"
other =Practice.new param1, param2
#For methods suggestions always call methods without parenthesis unless they need several variables
param3 = "nothing"
param4 = 0
other.any_method param3, param4

#for If/Else suggestions we shout use the short one unless the operations are more than 1 line
param1 > param4 ? "It's true" : "It's false"