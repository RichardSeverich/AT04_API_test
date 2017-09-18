=begin
Considered your previous script of convert seconds in minutes and seconds in hours :
Ask from prompt the value of the seconds
Perform the calculation of minutes and hours into one function, return both values
Print the values of the variables.
=end

class Seconds
    def initialize(seconds)
      @seconds=seconds
    end

    def convert()
    hours=@seconds/3600
    @seconds=@seconds%3600
    minutes=@seconds/60
    puts "the seconds is  #{hours} hours and #{minutes} minutes "
    return hours, minutes
    end

end

sec=Seconds.new(12307)
sec.convert