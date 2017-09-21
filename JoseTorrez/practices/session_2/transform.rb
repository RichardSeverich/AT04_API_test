class Transform
  def celsius_to_fahrenheit
    puts 'Insert the temperature in Celsius'
    _celsius = gets.chomp.to_i
    _conversion_fahrenheit = (((9* _celsius ) /5) + 32)
    puts "#{_celsius} Celsius grades are #{_conversion_fahrenheit} in Fahrenheit grades"
  end
  def fahrenheit_to_celsius
    puts 'Insert the temperature in Fahrenheit'
    _fahrenheit = gets.chomp.to_f
    _conversion_celsius = (5*(_fahrenheit - 32))/9
    puts "#{_fahrenheit} Fahrenheit grades are #{_conversion_celsius} in Celsius grades"
  end
end
t = Transform.new
t.celsius_to_fahrenheit
t.fahrenheit_to_celsius