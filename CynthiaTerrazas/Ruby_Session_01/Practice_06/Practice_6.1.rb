=begin
Create a ruby class with two methods :
	One method to calculate and print the area of a circle :
radius * 2 * PI
	One method to calculate and print the perimeter 	of a circle
radius * radius * PI
Instance the class and call to the methods in order to see the result printed, the radius should be asked by prompt
=end

class Circle
  def initialize (radius)
     @radius = radius
  end
  def calculate_area()
    @radius ** 2 * Math::PI
  end

  def calculate_perimeter()
    2 * @radius * Math::PI
  end

  puts "Please enter the radius of a circle"
  radius = gets.chomp.to_f

  new_circle = Circle.new(radius)

  puts "The area of circle is : #{new_circle.calculate_area} "
  puts "The perimeter of circle is : #{new_circle.calculate_perimeter} "

end