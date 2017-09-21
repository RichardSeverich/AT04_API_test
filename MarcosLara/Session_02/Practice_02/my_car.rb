=begin
Create a class called MyCar
1 When you initialize a new instance or object of the class, allow the user to define some instance
variables that tell us the year, color, and model of the car.
2 Create an instance variable that is set to 0 during instantiation of the object to track the current
speed of the car as well.
3. Create instance methods that allow the car to speed up, brake, and shut the car off, this methods
should print each action.
=end

class MyCar

  def initialize(model = 'none', color = 'none', year = 0)
    @model = model
    @color = color
    @year = year
    @speed = 0
  end

  def speed_up(increased_speed)
    @speed += increased_speed
    puts "The car has accelerated to #{@speed} kph"
  end

  def brake
    @speed = 0
    puts 'The car has been braked'
  end

  def shut_of
    self.brake if @speed > 0
    puts 'The car engine has been shut off'
  end
end

puts 'Enter Car Model'
model = gets.chomp
puts 'Enter Car Color'
color = gets.chomp
puts 'Enter Car Year'
year = gets.to_i

car = MyCar.new(model, color, year)
puts 'Increasing velocity'
car.speed_up(100)
puts 'Stopping car'
car.brake
puts 'Shut off engine'
car.shut_of
