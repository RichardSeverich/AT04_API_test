=begin
Create a new script using the same class created before but now :
 Add an accessor method to your MyCar class to change and view the color of your car.
Then add an accessor method that allows you to view, but not modify, the year of your car.
=end

class MyCar
  attr_writer :color
  attr_reader :color
  attr_reader :year
  def initialize(year, color, model)
    @year=year
    @color=color
    @model=model
    @current_speed=0
  end

  def speed_up(number)
    @current_speed += number
    puts "You accelerate to #{number} mph."
  end
  def brake()
    @current_speed =0
    puts "You brake the car"
  end
  def shut_off()
    @current_speed =0
    puts "You turn off the car"
  end
end

car= MyCar.new(2017,"red", "camioneta")
car.speed_up(50)
car.brake
car.shut_off
car.color = "blue"
puts car.color
puts car.year