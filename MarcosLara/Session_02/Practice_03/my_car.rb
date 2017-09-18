=begin
Create a new script using the same class created before but now :
 - Add an accessor method to your MyCar class to change and view the color of your car.
 - Then add an accessor method that allows you to view, but not modify, the year of your car.
=end

class MyCar
  attr_accessor :color
  attr_reader :year

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

puts "The previous color of the car was #{car.color}"
car.color = 'Blue'
puts "The actual color of the car is #{car.color}"
puts "And the year of manufacturing is #{car.year}"
