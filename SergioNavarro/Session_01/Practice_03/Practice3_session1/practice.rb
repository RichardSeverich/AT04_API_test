class Practice
  #Some information about the program
  puts "This program is for the conversion of seconds to minutes, hours and days"
  #minute = 60
  #hour = 3600
  #day = 86400

  #The oerations to get the solution
  print "Please insert the number of secods to conversion: "
  seconds = gets.chomp.to_i
  puts "The convertion is the follow information: "
  puts " --Minutes--"
  #Assign values to the variable solution
  solution = seconds.to_f / 60
  #Use the variable to print the "solution"
  puts "#: #{solution}"
  puts " --Hours--"
  #Assign values to the variable solution
  solution = seconds.to_f / 3600
  #Use the variable to print the "solution"
  puts "#: #{solution}"
  puts " --Days--"
  #Assign values to the variable solution
  solution = seconds.to_f / 86400
  #Use the variable to print the "solution"
  puts "#: #{solution}"

  puts "***********************************"
  puts "The program complete their purpose thanks."

end