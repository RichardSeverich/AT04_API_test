module Module1
  def millimeters_to_centimeters
    puts'Insert the millimeters'
    _millimeters = gets.chomp.to_f
    @conversion_to_centimeters = _millimeters / 10
    puts "#{_millimeters} millimeters in centimeters are: #{@conversion_to_centimeters}"
  end

  def centimeters_to_meters
    puts 'Insert the centimeters'
    _centimeters = gets.chomp.to_f
    @conversion_to_meters = _centimeters / 100
    puts "That centimeters in meters are: #{@conversion_to_meters}"
  end

  def meters_to_kilometers
    puts 'Insert the meters'
    _meters = gets.chomp.to_f
    @conversion_to_kilometers = _meters / 1000
    puts "#{_meters} meters in kilometers are: #{@conversion_to_kilometers}"
  end
end