=begin
						                	
=end
band = -1;
while(band!=0)
	puts "Select an option"
	puts "1 .Seconds to minutes"
	puts "2 .Seconds to hours "
	puts "3 .Second to days"
	puts "4 .Exit"
	op = gets.chomp.to_i

	def convert(seconds)
		resultMinuts = seconds / 60;
		resultHours = resultMinuts / 60;
		resultDays = resultHours / 24;
		return resultMinuts, resultHours, resultDays
	end
	puts "Enter Seconds"
	seconds = gets.chomp.to_f
	sel = case op
	when 1 then 
		resultMinuts, resultHours, resultDays = convert(seconds)
		puts "Result to convert #{seconds} seconds to minutes is: #{resultMinuts} minutes"
	when 2 then
		resultMinuts, resultHours, resultDays = convert(seconds)
		puts "Result to convert #{seconds} seconds to hours is: #{resultHours} hours"
	when 3 then 
		resultMinuts, resultHours, resultDays = convert(seconds)
		puts "Result to convert #{seconds} seconds to days is: #{resultDays} days"
	when 4 then
		band = 0;
	else 
		puts "Error option try again"
	end
end
