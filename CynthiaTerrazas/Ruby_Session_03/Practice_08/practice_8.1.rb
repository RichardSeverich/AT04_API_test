=begin
Create 1 Class considering :
Method that will create a hash with a list of userID and userName,the userID should be only numbers between 1 to 100.
Username should be only lowercase (nor more than 8 digits)

Method that is going to request to the user for a number (only 1 number) and need to return the amount of users
that have their user ID starting with the number inserted (E.g. if user inserted 1, then could count
all users with 1, 10,11,12,13..19 or 100), return and array with the user_ID that fulfilled this condition

Method that is going to request to the user for a character (only 1 char) and need to return the amount
of users that have their  userName starting with the character inserted (E.g. if user inserted a,
then could count all users that start with a), return and array with the list of userName that fulfilled this condition

Method to display a message considering :
UseID between 1-25 “User belong Group 1”
UseID between 26-50 “User belong Group 2”
UseID between 51-75 “User belong Group 3”
UseID between 76-100 “User belong Group 4”
Consider to use Case Equality
Method to print the array received

Please consider to use a control statement to get only the expected information,
if something invalid data is inserted need to request it again.
=end
class Register2
  def register()
    puts "how many people do you want to register"
    tam=gets.chomp.to_i

    @persons=Hash.new
    tam.times do |value|
      puts "please enter the id of the person"
      id=gets.chomp.to_i

      puts "please enter the name of the person"
      name=gets.chomp.to_s

      if (/^[1-100]$/.match(id) && /^[a-z]{0,8}$/.match(name))
      @persons.store(id,name)
      else
      puts "the id or name are incorrect"
      register()
      end
    end
  end

    def request_number()
      puts "please enter one number of 0-9"
      n=gets.chomp.to_i
      if  /^[0-9]$/.match(n)
        @arrid=@persons.map{|id,name| /^[n]/.match(id) }
      else
        puts "the number is incorrect, try again"
        request_number()
      end
    end

    def request_char()
      puts "please enter one number of 0-9"
      c=gets.chomp.to_s
      if  /^{0}$/.match(c)
        @arrname=@persons.map{|id,name| /^[c]/.match(name) }
      else
        puts "the username is incorrect, try again"
        request_char()
      end
    end

    def display

      @persons.each{|key,val|
      case key
        when (1..25); print "User belong Group 1\n"
        when (26..50); print "User belong Group 2\n"
        when (51..75); print "User belong Group 3\n"
        when (76-100); print "User belong Group 4\n"
        else; print "is not correct\n"
      end
      }
      puts "this is the complete array #{@persons} "
    end

end


reg=Register2.new
reg.register
reg.request_number
reg.request_char
reg.display




