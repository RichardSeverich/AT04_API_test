=begin
Practice 06
Create a ruby class with two methods :
	One method to calculate and print the area of a circle :
     radius * 2 * PI
	One method to calculate and print the perimeter 	of a circle
     radius * radius * PI
Instance the class and call to the methods in order to see the result printed, the radius should be asked by prompt
=end
class Circle
  def initialize(radius)
    @radius = radius
  end

  def area()
    Math::PI * @radius ** 2
  end

  def perimeter()
    2*Math::PI*@radius
  end
end
puts "Enter the radius of a circle"
radius = gets.chomp.to_f
circle= Circle.new(radius)
puts "The area of a circle with radius #{radius} is #{circle.area.round(2)}"
puts "The perimeter of a circle with radius #{radius} is #{circle.perimeter.round(2)}"
