require_relative 'Convertions'
require_relative 'logger'
require 'singleton'

class Registration
  include Singleton
  include Convertions
  include Logger

  def initialize
    @user_name = nil
    @id = nil
    @lis = Hash.new
    @list_user = Array.new
    @value = 0
  end


  def any
    @value= 10
  end
  def some
    @value
  end

  def set_values
    puts "insert name"
    send_logger "insert name"
    @user_name = gets.chomp
    send_logger @user_name
    until /^[a-z0-9]{1,11}$/.match(@user_name)
      puts "insert a name valid"
      send_logger "insert a name valid"
      @user_name = gets.chomp
      send_logger @user_name
    end
    puts "insert id"
    send_logger "insert id"
    @id = gets.chomp
    send_logger @id
    @lis.store(@id, @user_name)
  end

  def get_values
    @lis
  end


  def amount_user
    puts "insert number user: "
    send_logger "insert number user: "
    size = gets.chomp.to_i
    send_logger size
    until size > 2 && size < 16
      puts "number user should be no more 15 and no less 3"
      send_logger "number user should be no more 15 and no less 3"
      size = gets.chomp.to_i
      send_logger size
    end
    size.times do
      set_values
    end
  end

  def type_conversion
    puts "select number of type conversion"
    send_logger "select number of type conversion"
    puts "1.- From millimeters to centimeters"
    send_logger "1.- From millimeters to centimeters"
    puts "2.- From centimeters to meters"
    send_logger "2.- From centimeters to meters"
    puts "3.- From meters to kilometers"
    send_logger "3.- From meters to kilometers"
    n = gets.chomp.to_i
    send_logger n
    n
  end

  def printf_result
    case type_conversion
      when 1
        puts  a = Convertions.millimeters_to_centimeters
        send_logger a
      when 2
        puts a= Convertions.centimeters_to_meters
        send_logger a
      when 3
        puts a= Convertions.meters_to_kilometers
        send_logger a
      else
        puts "the select is not valid"
        send_logger "the select is not valid"
    end
  end

  def want_user_calculate
    @lis.each do |id, name|
      puts "Do you want to perform calculation?"
      send_logger "Do you want to perform calculation?"
      puts "select a option:"
      send_logger "select a option:"
      puts "YES"
      send_logger "YES"
      puts "NO"
      send_logger "NO"
      option = gets.chomp
      send_logger option
      if option == "YES"
        printf_result
      else
        puts "good bye"
        send_logger "good bye"
        @list_user.push(name)
      end
    end
    puts @list_user
    @list_user.each {|name| send_logger name}
  end

end

register = Registration.instance
register.amount_user
register.want_user_calculate