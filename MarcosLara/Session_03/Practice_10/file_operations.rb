def generate_file
  puts 'Enter filename'
  filename = gets.chomp
  puts 'Enter extension'
  extension = gets.chomp
  generated_file = File.open("#{filename}.#{extension}", 'w+')
  generated_file.truncate (0)
  puts 'Amount of lines to be added:'
  lines = gets.to_i
  lines.times do |i|
    puts "Entern line #{i+1} content:"
    generated_file.puts "#{gets.chomp}"
  end
  generated_file.close
  generated_file = File.open("#{filename}.#{extension}")
  print generated_file.read
end

generate_file
