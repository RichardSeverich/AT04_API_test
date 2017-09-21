=begin
Create a class called MyCar
1 When you initialize a new instance or object of the class, allow the user to define some instance variables that tell us the year,
color, and model of the car.
2 Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well.
3. Create instance methods that allow the car to speed up, brake, and shut the car off, this methods should print each action. E.g for speed up:
…
def speed_up(number)
      @current_speed += number
      puts “You accelerate to  #{number} mph."
end
=end
class MyCar

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

car=MyCar.new(2017,"red", "camioneta")
car.speed_up(50)
car.brake
car.shut_off