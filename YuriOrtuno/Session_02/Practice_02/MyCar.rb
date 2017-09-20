class MyCar

  def initialize
    @year = 2010
    @color = "blue"
    @model = "A1"
    @speed = 0
    @status = false #false is turn off and true is turn on
    @brake = true
  end

  def change_color color
    @color = color
  end

  def change_model model
    @model = model
  end

  def change_year year
    @year = year
  end


  def speed_up number
    @speed += number
    @brake = false
    puts "your aceleration is #{@speed} mph"
  end

  def brake number
    @speed -= number
    if @speed <= 0
      @brake = true
    end
  end


  def turn_on
    @status = true
  end

  def turn_on
    @status = false
  end

  def show_car
    puts "color of my car is: #{@color}"
    puts "model of my car is: #{@model}"
    puts "year of my car is: #{@year}"
  end

end

myCar = MyCar.new()
myCar.show_car
puts "input clor for change"
myCar.change_color(gets.chomp)
myCar.show_car
