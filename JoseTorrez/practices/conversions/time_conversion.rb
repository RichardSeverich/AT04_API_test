class TimeConversion
  SECONDS = 3600
  def conversion
    _minutes = SECONDS / 60
    _hours = SECONDS / 60 / 60
    _days = SECONDS / 60 / 60 / 24 .to_f
    puts "#{SECONDS} seconds are #{_minutes} minute(s)"
    puts"#{SECONDS} seconds are #{_hours} hour(s)"
    puts"#{SECONDS} seconds are #{_days} day(s)"
  end
end
TimeConversion.new().conversion