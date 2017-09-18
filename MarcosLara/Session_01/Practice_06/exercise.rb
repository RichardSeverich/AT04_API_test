=begin
Create a ruby class with two methods:
1. One method to calculate and print the area of a circle :
  radius * 2 * PI
2. One method to calculate and print the perimeter 	of a circle
  radius * radius * PI
Instance the class and call to the methods in order to see the result printed,
the radius should be asked by prompt
=end

class Circle
  def initialize (radius)
    @radius = radius
  end

  def area
    Math::PI * @radius ** 2
  end

  def perimeter
    2 * Math::PI * @radius
  end
end

def print_circle_properties (radius)
  my_circle = Circle.new(radius)
  puts 'Circle perimeter: %0.2f' % [my_circle.perimeter]
  puts 'Circle area: %0.2f' % [my_circle.area]
end

puts 'Enter the radius of the circle'
radius = gets.chomp.to_f
puts radius < 0.0 ? 'Enter a valid number' : print_circle_properties(radius)

