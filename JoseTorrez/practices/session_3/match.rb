def valid_username
  puts 'Insert your username:'
  _user_name = gets.chomp
  if (/\A[^A-Z+-.,!@#$%^&*();\/|<>"']+\z/ === _user_name) && (/[a-z]+/ === _user_name) &&
      (/\d+/ === _user_name) && (/_+/ === _user_name)
    puts 'Is a valid username'
  else
    puts 'Is an invalid username'
  end
end

def valid_password
  puts 'Insert your password: '
  _password = gets.chomp
  if (/\A[^+-.,!@#$%^&*();\/|<>"']+\z/ === _password) && (/[a-zA-Z]+/ === _password) &&
      (/\d+/ === _password) && (/_+/ === _password) && (/\A[a-zA-Z\d_]+{8,16}\z/ === _password)
    puts 'Is a valid password'
  else
    puts 'Is an invalid _password'
  end
end

def valid_email
  puts 'Insert your email: '
  _email = gets.chomp
  if (/\A[^@]+@([^@\.]+\.)+[^@\.]+\z/ === _email)
    puts 'Is a valid email'
  else
    puts 'Is an invalid email'
  end
end

valid_username
valid_password
valid_email
