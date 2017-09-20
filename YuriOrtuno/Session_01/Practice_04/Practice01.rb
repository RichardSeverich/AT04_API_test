puts "Choose an option and input number option"
puts "1 Seconds to minutes"
puts "2 Seconds to hours "
puts "3 Second to days"

case gets.chomp.to_i
  when 1 then
    puts "Enter Seconds"
    seconds = gets.chomp.to_f
    result = seconds / 60;
    puts "Seconds #{seconds} to minutes is: #{result} minutes"
  when 2 then
    puts "Enter Seconds"
    seconds = gets.chomp.to_f
    result = seconds / 3600;
    puts "Seconds #{seconds} to minutes is: #{result} hours"
  when 3 then
    puts "Enter Seconds"
    seconds = gets.chomp.to_f
    result = seconds / 86400;
    puts "Seconds #{seconds} to minutes is: #{result} days"
end

