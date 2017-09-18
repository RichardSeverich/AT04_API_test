=begin
Practice 3
Create a new script using the same class created before but now :
 Add an accessor method to your MyCar class to
 change and view the color of your car.
 Then add an accessor method that allows you to view, but not modify, the year of your car.
=end
class MyCar
  #Attribute to change and view the color of your car.
  attr_accessor :color
  #Attribute to see, but not modify, the year of your car.
  attr_reader :year

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

toyota = MyCar.new(2017, 'Black', 'Sport')
toyota.speed_up(100)
toyota.brake(10)
toyota.shutOff

puts "My car is from the year #{toyota.year} and #{toyota.color} color"
puts "Changing the color of my car"
toyota.color = "Red"
puts "My car is from the year #{toyota.year} and #{toyota.color} color"
