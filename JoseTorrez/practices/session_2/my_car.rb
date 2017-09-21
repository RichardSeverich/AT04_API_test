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
     puts "Your acceleration is #{number} mph."
  end

  def brake(number)
    @current_speed -= number
     puts "You braked, your speed is #{@current_speed} mph."
  end

  def shut_off()
      @current_speed = 0
     puts "You shut the car off."
  end
end

my_car = MyCar.new(2018, "BLACK", "MAZDA")
my_car.speed_up(55)
my_car.brake(33)
my_car.shut_off

