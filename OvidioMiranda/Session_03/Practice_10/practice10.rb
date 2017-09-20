=begin
Session 3 - Practice 10
Create a method that is going to :
1. ask for a filename and extension  .E.g test.txt
2. Then you will delete all the content of the file (in case that already exist)
3. Then ask for the user for the amount of lines to be added
4. According the amount of lines, ask for each line.
5. Close the file
6 . Finally print the values of the file (also be sure that file is created in your current directory)
7.  Change the mode of the file in order to add a new line to existing file. Run the script and push the code and the result
=end

class Practice10
  attr_reader :file
  attr_reader :file_name_with_extension
  #1. Ask for a filename and extension  .E.g test.txt
  def ask_for_file
    puts '##### Enter the following file information #####'
    print 'File name: '
    file_name = gets.chomp
    print 'Extension: '
    extension = gets.chomp
    return "#{file_name}.#{extension}"
  end

  def init_file
    @file_name_with_extension = ask_for_file
    #2. Then you will delete all the content of the file (in case that already exist)
    if File.exist?(@file_name_with_extension)
      puts '##### Existing file #####'
      puts 'Delete all the content of the file'
      @file = File.open(@file_name_with_extension, 'w+')
      @file.truncate(0)
    else
      @file = File.open(@file_name_with_extension, 'w+')
      puts '##### Creating new file. #####'
      puts 'File created'
      add_lines
    end
  end

  #3. Then ask for the user for the amount of lines to be added
  def add_lines
    print 'How many lines do you want to add to the file?: '
    number_of_lines = gets.to_i
    #4. According the amount of lines, ask for each line.
    number_of_lines.times do |line|
      print "Text for #{(line + 1)} is : "
      text = gets.chomp
      @file.write "#{text}\n"
    end
    #5. Close the file
    @file.close
    print_file
  end

  #6. Finally print the values of the file
  def print_file
    @file = File.open(@file_name_with_extension)
    puts '##### Data from the file #####'
    print @file.read
  end
  #7.  Change the mode of the file in order to add a new line to existing file. Run the script and push the code and the result
  def add_extra_lines
    @file_name_with_extension = ask_for_file
    @file = File.open(file_name_with_extension, 'a')
    add_lines
    @file.close
    puts "New lines added to file"
    print_file
  end
end

sample = Practice10.new
sample.init_file
=begin
#7.  Change the mode of the file in order to add a new line to existing file. Run the script and push the code and the result
puts "You want to add new lines to a the file"
sample.add_extra_lines
=end



