=begin
Create a ruby class with two methods :
	One method to calculate and print the area of a circle :
radius * 2 * PI
	One method to calculate and print the perimeter of a circle 
radius * radius * PI
Instance the class and call to the methods in order to see the result printed, the radius should be asked by prompt						                	
=end

#!/usr/bin/ruby
class Circle
  
  def initialize(radius)
    @radius = radius
    @pi= 3.1416
  end
  def area ()
    @area = @pi * @radius ** 2 
  end
  
  def perimeter()
    @perimeter = 2*@pi*@radius
  end
end

puts "enter the radius of a circle"
radius = gets.chomp.to_f
circle = Circle.new(radius)
puts "The area of circle is 		: 	#{circle.area} "
puts "The perimeter of circle is 	: 	#{circle.perimeter} "