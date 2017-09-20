def file
  file_example = File.open('file_test.txt', 'w+')
  file_example.truncate(0)
  puts "how many lines do you want to add"
  lines = gets.chomp.to_i
  lines.times do
    puts "input line"
    file_example.write(gets)
  end
  file_example.close
  file_example = File.open('file_test.txt')
  print file_example.read
end

file