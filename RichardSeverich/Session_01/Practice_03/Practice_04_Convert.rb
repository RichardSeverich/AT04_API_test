=begin
Create a script with some variables that convert 
	seconds in minutes, 
	seconds in hours and 
	second in days. 
Do not just type in the measurements. 
Please work out the arithmetic in Ruby.
Create variable to assign the values Use the variable name to print the result.								                	
=end
band = -1;
while(band!=0)
	puts "Select an option"
	puts "1 .Seconds in minutes"
	puts "2 .Seconds in hours "
	puts "3 .Second in days"
	puts "4 .Exit"
	op = gets.chomp.to_i
	
	sel = case op
	when 1 then 
		puts "Enter Seconds"
		seconds = gets.chomp.to_f
		result = seconds / 60;
		puts "Result to convert #{seconds} seconds to minutes is: #{result} minutes"
	when 2 then
		puts "Enter Seconds"
		seconds = gets.chomp.to_f
		result = seconds / 60 / 60;
		puts "Result to convert #{seconds} seconds to hours is: #{result} hours"
	when 3 then 
		puts "Enter Seconds"
		seconds = gets.chomp.to_f
		result = seconds / 60 / 60 / 24;
		puts "Result to convert #{seconds} seconds to days is: #{result} days"
	when 4 then
		band = 0;
	else 
		puts "Error option try again"
	end
end
