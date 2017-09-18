=begin
Create a ruby class with two methods :
  One method to calculate and print the area of a circle :
radius * 2 * PI
  One method to calculate and print the perimeter   of a circle
radius * radius * PI
Instance the class and call to the methods in order to see the result printed, the radius should be asked by prompt
=end

class Circle

  def initialize radius
    @radius = radius
  end

  def area
    @radius * 2 * Math::PI
  end

  def perimeter
    @radius * @radius * Math::PI
  end

end

print "Enter the value of the radius : "
radius = gets.chomp.to_f

circle = Circle.new(radius)
puts "The area of the circle is: #{circle.area}"
puts "The perimeter of the circle is: #{circle.perimeter}"
