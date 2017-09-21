=begin
Create a method that is going to :
ask for a filename and extension  .E.g test.txt
Then you will delete all the content of the file (in case that already exist)
Then ask for the user for the amount of lines to be added
According the amount of lines, ask for each line.
Close the file
Finally print the values of the file (also be sure that file is created in your current directory)
7.  Change the mode of the file in order to add ay new line to tehe xisting file. Run the script and push the code and the result
=end

class Files
  def ask
    puts "please enter the mane file and extension  .E.g test.txt"
    @name=gets.chomp
    @actual_file = File.open(@name, 'w+')
    @actual_file.truncate(0)
    puts "please enter the number of lines for be added"
    cant=gets.chomp.to_i

    cant.times do
      puts "please enter the line for the file"
      line=gets.chomp.to_s
      @actual_file.write(line)
    end
    @actual_file.close
  end

  def print_file
    @actual_file = File.open(@name)
     puts @actual_file.read
  end

  def add_line
    @actual_file = File.open(@name, 'a')
    puts "please enter the line for the file"
    line=gets.chomp.to_s
    @actual_file.write(line)
    @actual_file.close
  end

end
file=Files.new
file.ask
file.print_file
file.add_line
file.print_file