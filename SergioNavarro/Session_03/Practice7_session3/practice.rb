class Practice
  def gather_information
    @hash1 = Hash.new
    print "How many users do you want?: "
    number = gets.chomp.to_i
    print "Please insert username (lowercase): "
    username = gets.chomp
    print "Please insert a userID (numbers between 1 and 100 no more tha 8 digits): "
    userID = gets
    number.times do |index|
      until /([a-z])/ =~ username && /([1-100]){0,8}/.match (userID) do
        print "Incorrect username or userID Please insert username :  "
        username = gets.chomp
        print "Please insert userID:  "
        userID = gets
      end
      @hash1.store userID.to_i, username
    end
    @hash1
  end

  def amount_users_id
    @array1 = Array.new
    print "Please insert the number to compare with usersID (only one digit): "
    number = gets.chomp.to_i
    until number < 10 && number >= 0 do
      print "The number must only be 1 digit try again: "
      number = gets.chop.to_i
    end
    @hash1.each do |userID, username|
      @array1.push userID if userID.to_s.include? number.to_s
    end
    @array1
  end

  def amount_username_char
    @array2 = Array.new
    print "Please insert a char to compare with username (only one char): "
    character = gets.chomp
    until character.to_s.length == 1 do
      print "The carh must only be 1 char try again: "
      character = gets.chop
    end
    @hash1.each do |userID, username|
      @array2.push username if username.to_s.downcase.include? character.to_s
    end
    @array2
  end

  def message_printing
    case @hash1.keys
      when keys > 1 && keys < 25; print "User belong Group 1"
      when keys > 26 && keys < 50; print "User belong Group 2"
      when keys > 51 && keys < 75; print "User belong Group 3"
      when keys > 76 && keys < 100; print "User belong Group 4"
      else; print "Error!"
    end
  end

  def print_array array
    p array
  end

end

other = Practice.new
other.gather_information
other.amount_users_id
other.amount_username_char
other.message_printing
other.print_array other.amount_username_char
other.print_array other.amount_users_id


