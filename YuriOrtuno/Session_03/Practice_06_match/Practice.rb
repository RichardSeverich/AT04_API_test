#Need to be write with lowercase letter (a-z), number (0-9), an underscore
def input_name
  puts "input name"

  name = gets.chomp.to_s
  until /^[a-z]+[_]+[0-9]+$/.match(name)
  # until /^[^A-Z]*$/.match(name)
  # until /^[a-z]*$/.match(name)
    puts "Need to be write with lowercase letter (a-z), number (0-9)"
    name = gets.chomp.to_s
  end
  name
end

#Need to be write with lowercase letter (a-z), number (0-9), letter (A-Z) and the length have to be between
# 8 and 16 characters
def input_password
  puts "input password"
  password = gets.chomp.to_s
  until /^[a-z0-9A-Z]*$/.match(password)
    puts "Need to be write with lowercase letter (a-z), number (0-9), letter (A-Z)
         and the length have to be between 8 and 16 characters"
    password = gets.chomp.to_s
  end
  password
end

#Need to have the format anything@domain.com (could accept also country e.g. anything@domain.com.bo)
def input_email
  puts "input email"
  email = gets.chomp.to_s
  until /^[a-z0-9]+[@]+[a-z]+(.com|.com.bo)+$/.match(email)
    puts "Need to have the format anything@domain.com or anything@domain.com.bo"
    email = gets.chomp.to_s
  end
  email
end


puts input_name
puts input_password
puts input_email





