class Convert
  def initialize (seconds)
    @seconds = seconds
  end
  def convertTo ()
    puts 'Enter the seconds'
    @seconds = gets.chomp.to_i
    toMinutes = @seconds /60
    toHours = @seconds /3600
    return  puts "this is minutes #{toMinutes} and this in hours #{toHours}"
  end
end
Convert.new(@seconds).convertTo
