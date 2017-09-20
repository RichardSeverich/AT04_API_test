=begin
Create a class called MyCar
1 When you initialize a new instance or object of the class, allow the user to
define some instance variables that tell us the year, color, and model of the
car.
2 Create an instance variable that is set to 0 during instantiation of the
object to track the current speed of the car as well.
3. Create instance methods that allow the car to speed up, brake, and shut the
car off, this methods should print each action.
=end

class MyCar

  attr_reader :year
  attr_accessor :color

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You accelerate to #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You desaccelerate to #{@current_speed} mph."
  end

  def shut_off()
    @current_speed = 0
    puts "You shut the car off."
  end

end

my_car = MyCar.new(2017, "blue", "Nissan")
my_car.speed_up(5)
my_car.brake(3)
my_car.shut_off
