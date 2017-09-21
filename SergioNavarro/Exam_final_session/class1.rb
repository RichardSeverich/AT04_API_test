require_relative './module1'
require 'singleton'
class Class1
  include Convert
  include Singleton
  attr_accessor :username, :id

  def initialize
    @username = nil
    @id = nil
    @hash1 = Hash.new
  end

  def ask_information
    print "Please insert the UserName no more tha 11 characters: "
    @username = gets.chomp
    file_op ("UserName: #{@username}")
    until /[a-z0-9]{1,8}/.match(@username) do
      print "Wrong! Insert a UserName no more than 11 char letter and/or numbers: "
      @username
    end
    print "Please insert an ID: "
    @id = gets.chomp
    file_op ("ID: #{@id}")
    @hash1.store(@username, @id)
    ask_user
  end

  def amount_of_users
    print "How many users do you want?(no more than 15 or less than 3): "
    number = gets.chomp.to_i
    file_op ("Return: #{number}")
    number.times do
      ask_information
    end
  end

  def witch_conversion
    puts "a) From Millimeters to Centimeters"
    puts "b) From Centimeter to Meters"
    puts "c) From Meters to Kilometers"
    print "Select your option: "
    option = gets.chomp
    file_op ("Return option #{option}")
    conversion option
  end

  def conversion option
    case option.to_s.downcase
      when 'a'
        print "Insert the value in mm: "
        value = gets.chomp.to_f
        puts "#{value}mm represent #{milli_to_centi }cm."
      when 'b'
        print "Insert the value in cm: "
        value = gets.chomp.to_f
        puts "#{value}cm represent #{centi_to_meter }mt."
      when 'c'
        print "Insert the value in mt: "
        value = gets.chomp.to_f
        puts "#{value}represent #{meter_to_kilom }Km."
      else
        puts "ERROR!"
    end
    file_op ("Convertion did")
  end

  def ask_user
    array = Array.new
    @hash1.each_key do |username|
      print "The user #{username} wants a calculation?(YES - NO): "
      ans = gets.chomp.to_s.upcase
      if ans.eql?'YES'
        witch_conversion
        file_op ("Selected YES for Conversion")
      else
        puts "Good Bye!"
        array.push username
      end
    end
    p array
  end

  def file_op data
    file = File.open "execution.log", 'a'
    file.write "data: #{data}"
    file.close
  end

end

other = Class1.instance
#other.ask_information
other.amount_of_users


