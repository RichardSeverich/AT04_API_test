
=begin
Create a script with some variables that convert seconds in minutes, seconds in hours and second in days.
Do not just type in the measurements. Please work out the arithmetic in Ruby.
Create variable to assign the values
Use the variable name to print the result.
=end

class Practice04
  puts "Please enter the seconds"
  seconds =gets.chomp.to_i

    days=seconds/86400
    seconds= seconds%86400
    hours=seconds/3600
    seconds=seconds%3600
    minutes=seconds/60
    puts "the seconds is #{days} days #{hours} hours and #{minutes} minutes "

end