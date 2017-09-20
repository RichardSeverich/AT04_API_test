class Practice
  def ask_information
    print "Please insert the name of the file: "
    name = gets.chomp
    print "Please insert the extension for the file: "
    ext = gets.chomp
    complete_name = "%s.%s" % [name, ext]
    file = File.new complete_name, "w+"
    file.truncate (0)
    print "How many lines do you want?: "
    lines = gets.chomp.to_i
    lines.times do
      puts "Insert a line:"
      line = gets
      file.puts line
    end
    file.close
  end

end

other = Practice.new
other.ask_information
# "hello, %s.  Where is %s?" % ["John", "Mary"]"

#print file_example.read
