require 'singleton'
require_relative "conversions"

class Exam
  include Conversions
  include Singleton
  attr_accessor :users
  #attr_accessor :user_name, :user_id, :user_hash

  def initialize
    @username = nil
    @id = 0
    @file = File.open('execution.log', 'w+')
    @file.truncate(0)
    @file.write("File created: #{Time.now}\n")

  end

  def register_users
    @users= Hash.new
    print 'Enter the amount of users to register:'
    number_users = gets.chomp.to_i
    @file.write("Enter the amount of users to register: #{number_users}\n")
    until number_users>=3&&number_users<=15
      puts "#{number_users} is invalid (Valid= min: 3 - max: 15) "
      print 'Enter the amount of users to register: '
      number_users = gets.chomp.to_i
      @file.write("Enter the amount of users to register: #{number_users}\n")
    end
    if (number_users>=3&&number_users<=15)
      number_users.times do
        print 'Id: '
        id = gets.chomp.to_i
        @file.write "Id: #{id}\n"
        print 'User name:'
        user_name = gets.chomp
        @file.write("User name: #{user_name}\n")
        until validate_user_name(user_name)
          puts 'Invalid user name'
          print 'User name:'
          user_name = gets.chomp
          @file.write "User name: #{user_name}\n"
        end
        @users[:id] = id
        @users[:name] = user_name
       end
    else
      puts "The number of users cannot be greater than 15 and less of 3"
    end

  end

  def type_conversion
    band = -1;
    while (band!=0)
      puts "############ Options Displayed #######"
      puts "a) From Milimeters to centimeters"
      puts "b) From centimeters to meters"
      puts "c) From meters to kilometers"
      puts "d) Exit"
      print "Select an option: "
      op = gets.chomp.downcase.to_s
      sel = case op
              when 'a'
                puts "############ From Milimeters to centimeters #######"
                print "Insert the value in milimeter:"
                milimeters = gets.chomp.to_f
                result = milimeters_to_centimeters(milimeters)
                puts "#{milimeters} milimeters represent #{result} centimeters"
                @file.write ("#{milimeters} milimeters represent #{result} centimeters\n")
              when 'b'
                puts "############ From centimeters to meters #######"
                print "Insert the value in centimeters:"
                centimeters = gets.chomp.to_f
                result = centimeter_to_meters(centimeters)
                puts "#{centimeters} centimeters represent #{result} meters"
                @file.write ("#{centimeters} centimeters represent #{result } meters\n")
              when 'c'
                puts "############ From meters to kilometers #######"
                print "Insert the value in meters:"
                meters = gets.chomp.to_f
                result = centimeter_to_meters(meters)
                puts "#{meters} meters represent #{result} kilometers"
                @file.write ("#{meters} meters represent #{result} kilometers\n")
              when 'd'
                band = 0;
                puts "Close Application"
                @file.write ("Close Application\n")
              else
                @file.write ("Error option try again\n")
            end
    end
  end


  def validate_user_name(user_name)
    user_name =~ /^[a-z0-9]{1,11}$/
  end

  def ask_a_users
    array  = []
    @users.each_with_index do |(id, user_name), index|
      print "User #{user_name}, do you want to perform a calculation?(Yes/No): "
      answer = gets.chomp.upcase
      @file.write("User #{user_name}, do you want to perform a calculation?(Yes/No): #{answer}\n")
      if answer.eql?('YES')
        type_conversion
      else
        puts "Goodbye #{user_name}!!"
        @file.write("Goodbye #{user_name}!!\n")
        array  << user_name
      end
    end
  end
end

sample = Exam.instance
sample.register_users
sample.ask_a_users
=begin
p sample.milimeters_to_centimeters(58652) #5865.2 cm
p sample.centimeter_to_meters(58652) #586,52 mtrs
p sample.meters_to_kilometers(58652) #58,652 km
=end




