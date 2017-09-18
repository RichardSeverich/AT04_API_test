=begin
Create a new script using the same class created before but now :
 Add an accessor method to your MyCar class to change and view the
 color of your car. Then add an accessor method that allows you to
 view, but not modify, the year of your car.
=end

require_relative '../Practice02/practice'

my_car = MyCar.new(2017, "blue", "Nissan")
puts my_car.color="red"
puts my_car.year
