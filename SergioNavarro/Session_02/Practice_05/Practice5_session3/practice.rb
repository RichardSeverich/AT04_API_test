class Practice
  #Some information about the program
  puts "This program is for the conversion of seconds to minutes, hours and days"
  #minute = 60
  #hour = 3600
  #day = 86400

  def calculate
    #The oerations to get the solution
    print "Please insert the number of secods to conversion: "
    seconds = gets.chomp.to_i
    puts "The convertion is the follow information: "
    puts " --Minutes--"
    #Assign values to the variable solution
    solution = seconds.to_f / 60
    #Use the variable to print the "solution"
    solution1 = "#: #{solution}"
    puts " --Hours--"
    #Assign values to the variable solution
    solution = seconds.to_f / 3600
    #Use the variable to print the "solution"
    solution2 =  "#: #{solution}"
    puts " --Days--"
    #Assign values to the variable solution
    solution = seconds.to_f / 86400
    #Use the variable to print the "solution"
    solution3 = "#: #{solution}"

    puts "***********************************"
    puts "The program complete their purpose thanks."
    return solution1,solution2, solution3
  end
  def other
    value1, value2, value3 = calculate
    puts "valor 1 = #{value1}, valor 2 = #{value2}, valor 3 = #{value3}"
  end

end

other2 = Practice.new
other2.other