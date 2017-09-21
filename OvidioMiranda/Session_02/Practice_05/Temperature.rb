=begin
Practice 5
Write 1 Methods that transform Celsius in Fahrenheit
	 Fahrenheit = (((9* Celsius ) /5) + 32)
This method should receive a Celsius value
Pickup any way of the return displayed.

2. Write 1 Method that transform Fahrenheit in Celsius
	 Celsius = (5*(Fahrenheit - 32))/9
This method should receive a Celsius value
Pickup any other way of the return displayed
Tips : use the correct format of number (int? float?)

=end
class Temperature
  attr_reader :degrees

  def initialize (degrees)
    @degrees = degrees
  end

  def celsiusToFahrenheit
    fahrenheit = ((9 * @degrees) / 5.0) + 32
    puts "#{@degrees.round(2)} °C Celsius degress is #{fahrenheit.round(2)} Fahrenheit (°F)degrees"
  end

  def fahrenheitToCelsius
    celsius=(5 * (@degrees - 32)) / 9.0
    puts "#{@degrees.round(2)} °F Fahrenheit degress is #{celsius.round(2)} Celsius (°C)degrees"
  end

end


def main
  band = -1;
  while (band!=0)
    puts "############ Menu Options########"
    puts "1.- Celsius(°C)to Fahrenheit(°F)degrees"
    puts "2.- Fahrenheit(°F) to Celsius(°C) degrees"
    puts "3.- Exit"
    print "Select an option: "
    op = gets.chomp.to_i
    sel = case op
            when 1
              print "Enter Celsius(°C) degrees: "
              degrees = gets.chomp.to_f
              converter = Temperature.new(degrees)
              converter.celsiusToFahrenheit
            when 2
              print "Enter Fahrenheit(°F) degrees: "
              degrees = gets.chomp.to_f
              converter = Temperature.new(degrees)
              converter.fahrenheitToCelsius
            when 3
              band = 0;
              puts "Close Application"
            else
              puts "Error option try again"
          end
  end
end

main
