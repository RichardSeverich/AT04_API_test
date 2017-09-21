require_relative '../session_2/my_car'
class AccessCar
  my_car = MyCar.new(2018, "BLACK", "MAZDA")
  puts my_car.color="BLUE"
  puts my_car.year
end