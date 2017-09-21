=begin
Add a method that is going to ask for a username :
Need to be write with lowercase letter (a-z), number (0-9), an underscore
Add a method that is going to ask for a password:
Need to be write with lowercase letter (a-z), number (0-9), letter (A-Z) and the length have to be between 8 and 16 characters
Add a method that is going to ask for email
Need to have the format anything@domain.com (could accept also country e.g. anything@domain.com.bo)
=end
class Login

  def username()
    puts "please enter your username"
    user=gets.chomp
    if  /^[a-z0-9_]*$/.match(user)
       puts "your user name is correct"
      return user
    end
    else
    puts "your user name is incorrect, try again"
    username()
  end



  def password
    puts "please enter your password"
    pass=gets.chomp
    if  /^[a-z0-9A-Z]{8,16}$/.match(pass)
      puts "your password is correct"
      return pass
    end
  else
    puts "your password is incorrect, try again"
    password()
  end

  def email
    puts "please enter your email"
    mail=gets.chomp
    if  /[a-z@][a-z](.com|.com.bo)/.match(mail)
      puts "your email is correct"
      return mail
    end
  else
    puts "your email is incorrect, try again"
    email()
  end

end

login=Login.new
login.username
login.password
login.email