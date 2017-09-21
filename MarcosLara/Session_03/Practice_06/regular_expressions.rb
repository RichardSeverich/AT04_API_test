=begin
Add methods that going to ask for:
  - Username. Need to be write with lowercase letter (a-z), number (0-9), an underscore
  - Add a method that is going to ask for a password:
    Need to be write with lowercase letter (a-z), number (0-9), letter (A-Z)
    and the length have to be between 8 and 16 characters
  - Add a method that is going to ask for email
    Need to have the format anything@domain.com (could accept also country e.g. anything@domain.com.bo)
=end

def username_verification
  valid = false
  until valid
    puts 'Enter a valid username'
    user = gets.chomp
    if user[/^(?=.*[a-z])(?=.*[\d])(?=.*[_])[a-z\d_]+$/]
      puts 'Valid username'
      valid = true
    else
      puts 'Invalid username'
    end
  end
end

def password_verification
  valid = false
  until valid
    puts 'Enter a valid password'
    password = gets.chomp
    if password[/^(?=.*[a-z])(?=.*[A-Z])(?=.*[\d])[a-zA-Z\d]{8,16}$/]
      puts 'Valid password'
      valid = true
    else
      puts 'Invalid password'
    end
  end
end

def email_verification
  valid = false
  until valid
    puts 'Enter a valid email'
    password = gets.chomp
    if password[/^[\w.-]+@[a-zA-Z0-9]+\.(com|net|org)+(\.[a-z]{2})?$/]
      puts 'Valid email'
      valid = true
    else
      puts 'Invalid email'
    end
  end
end

username_verification
password_verification
email_verification
