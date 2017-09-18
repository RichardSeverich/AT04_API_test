class Circle
  $PHI =3.141592

  def initialize (radius)
    @radius = (radius)
  end
  def printArea
    puts 'Enter the radius: '
    @radius = gets.to_f
    _area = @radius ** 2 * $PHI
    puts "The area for the circle is #{_area}"
  end
  def printPerimeter
    puts 'Enter the radius: '
    @radius = gets.to_f
    _perimeter = @radius* 2 * $PHI
    puts "The perimeter for the circle is: #{_perimeter}"
  end
end
Circle.new(@radius).printArea
Circle.new(@radius).printPerimeter

