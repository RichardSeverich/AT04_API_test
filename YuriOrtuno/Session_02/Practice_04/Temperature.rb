class Temperature

  def convertCtoF celcius
    puts (((9* celcius.to_f) /5) + 32)
  end

  def convertFtoC farenheit
    puts (5*(farenheit.to_f - 32))/9
  end

end

Temperature.new.convertCtoF(14)
Temperature.new.convertFtoC(72)
