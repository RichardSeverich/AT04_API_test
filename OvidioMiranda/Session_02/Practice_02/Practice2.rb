=begin
Practice 2
Create a class called MyCar.
1 When you initialize a new instance or object of the class,
  allow the user to define some instance variables that tell us the year, color, and model of the car.
2 Create an instance variable that is set to 0 during instantiation
  of the object to track the current speed of the car as well.
3. Create instance methods that allow the car to
   _speed up
   _brake
   _shut the car off
   this methods should print each action. E.g for speed up:

=end
class MyCar
  def initialize (year, color, model)
    @year=year
    @color=color
    @model=model
    @speed=0
  end

  def speed_up(number)
    @speed += number
    puts "You accelerate to #{number} mph."
  end

  def brake(number)
    @speed -= number
    puts "You brake slowed down to #{@speed } mph."
  end

  def shutOff
  puts 'You shut off the car'
    @speed= 0
  end

end

toyota = MyCar.new(2017,'Black','Sport')
toyota.speed_up(100)
toyota.brake(10)
toyota.shutOff

