module Convertions
  def Convertions.millimeters_to_centimeters
    puts "insert millimeters"
    millimeters = gets.chomp.to_f
    "#{millimeters} millimeters in centimeters is: #{millimeters /= 10}"
  end

  def Convertions.centimeters_to_meters
    puts "insert centimeters"
    centimeters = gets.chomp.to_f
    "#{centimeters} centimeters in meters is: #{centimeters /= 100}"
  end

  def Convertions.meters_to_kilometers
    puts "insert meters"
    meters = gets.chomp.to_f
    "#{meters} meters in kilometers is: #{meters /= 1000}"
  end
end
