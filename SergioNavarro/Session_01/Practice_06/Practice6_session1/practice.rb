class Practice
  #Cosntructor with the parameter Radius
  def initialize(radius)
    @radius = radius
    @pi = 3.1415
  end
 #Return the area
  def area
    @radius * @pi ** 2
  end
 #Return the perimeter
  def perimeter
     2 * @pi * @radius
  end
end
#Some info about the program
puts "This program use classes and return the area and perimeter with a radius"
#User insert the radius
print "Insert the Radius of the circle: "
radius = gets.chomp.to_f
#Instance of the class
circle = Practice.new(radius)
puts "The AREA of the circle is: #{circle.area}"
puts "The PERIMETER of the circle is: #{circle.perimeter}"

puts "***************************"
puts "Thanks."
