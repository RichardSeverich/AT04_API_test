class Practice
  def ask_username
    print "Please insert username in lowercase number and underscore in that order: "
    username = gets.chomp
    until /([a-z]+[1-9]+[_])/ =~ username do
      print "Incorrect username, Please insert username in lowercase number and underscore:  "
      username = gets.chomp
    end
  end

    def ask_password
      print "Please insert password with lower-upper-case  letter, number, length have to be between 8 and 16 char: "
      password = gets.chomp
      until /^[a-z0-9A-Z]{8,16}$/.match password do
        print "Incorrect username, Please insert username in lowercase number and underscore:  "
        password = gets.chomp
      end
    end

  def ask_email
    print "Please insert password with lower-upper-case  letter, number, length have to be between 8 and 16 char: "
    email = gets.chomp
    until /([a-z]+[@]+[a-z]+[.]+[com][.][bo])/ =~ email do
      print "Incorrect username, Please insert username in lowercase number and underscore:  "
      email = gets.chomp
    end
  end
end

other = Practice.new
other.ask_username
other.ask_password
other.ask_email
