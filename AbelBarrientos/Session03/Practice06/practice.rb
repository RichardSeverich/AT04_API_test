def valid_username
  puts "Input your username:"
  username = gets.chomp
  if (/\A[^A-Z+-.,!@#$%^&*();\/|<>"']+\z/ === username) && (/[a-z]+/ === username) && (/\d+/ === username) && (/_+/ === username)
    puts "Valid username."
  else
    puts "Invalid username."
  end
end

def valid_password
  puts "Input your password:"
  password = gets.chomp
  if (/\A[^+-.,!@#$%^&*();\/|<>"']+\z/ === password) && (/[a-zA-Z]+/ === password) && (/\d+/ === password) && (/_+/ === password) && (/\A[a-zA-Z\d_]+{8,16}\z/ === password)
    puts "Valid password."
  else
    puts "Invalid password."
  end
end

def valid_email
  puts "Input your email:"
  email = gets.chomp
  if (/\A[^@]+@([^@\.]+\.)+[^@\.]+\z/ === email)
    puts "Valid email."
  else
    puts "Invalid email."
  end
end

valid_username
valid_password
valid_email
