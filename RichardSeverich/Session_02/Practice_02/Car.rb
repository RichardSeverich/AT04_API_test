=begin
Create a class called MyCar
1 When you initialize a new instance or object of the class, allow the user to define some 
instance variables that tell us the year, color, and model of the car. 
2 Create an instance variable that is set to 0 during instantiation of the object to track 
the current speed of the car as well. 
3. Create instance methods that allow the car to speed up, brake, and shut the car off, this 
methods should print each action. E.g for speed up:
def speed_up(number) 
      @current_speed += number 
      puts “You accelerate to  #{number} mph." 
end     	
=end
class MyCar
	attr_reader :year
	attr_reader :color
	attr_reader :model
	attr_reader :current_speed
	
  def initialize(year, color , model)
  	@year = year
  	@color = color
  	@model = model
  	@current_speed = 0
  end

  def speed_up (number)
    @current_speed +=number
    puts "you spped up #{number} mph"
  end

  def speed_down (number)
    @current_speed -=number
    puts "you spped down #{number} mph"
  end

   def brake
    @current_speed =0
    puts "you break the car"
  end

  def turn_on
    @engine_state = :on
    puts "You turn on"
  end
  
  def turn_off
    @engine_state = :off
    puts "You turn off"
  end
  	
end

car = MyCar.new(2016,"Black","Toyota")
car.turn_on
puts "Your current speed is #{car.current_speed}"
car.speed_up(100)
puts "Your current speed is #{car.current_speed}"
car.speed_down(20)
puts "Your current speed is #{car.current_speed}"
car.brake
puts "Your current speed is #{car.current_speed}"
car.turn_off
