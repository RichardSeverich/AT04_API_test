class Circle

  PI = 3.141592
  def initialize radius
    @radius =radius
  end

  def area
    @radius * 2 * PI
  end

  def perimeter
    @radius * @radius * PI
  end
end

circle = Circle.new(gets.chomp.to_f)
puts "The area is #{circle.area}"
puts "The area is #{circle.perimeter}"