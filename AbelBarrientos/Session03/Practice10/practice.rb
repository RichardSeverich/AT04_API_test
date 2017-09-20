def input_filename
  puts "Insert a filename with extension: "
  filename = gets.chomp
  file = File.open(filename, 'w+')
  file.truncate(0)
  puts "Insert the amount of lines: "
  lines_number = gets.chomp.to_i
  lines_number.times do
    puts "Insert the content for current line:"
    line_content = gets
    file.write line_content
  end
  file.close
  filename
end

def print_file filename
  file = File.open(filename)
  puts "Current content of the file:"
  print file.read
  file.close
end

def change_file filename
  file = File.open(filename, 'a')
  puts "Insert the new line: "
  file.write gets.chomp
  file.close
end

file = input_filename
print_file file
change_file file
print_file file
