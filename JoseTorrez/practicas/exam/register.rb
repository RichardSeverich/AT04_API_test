require_relative './Module1'
require 'singleton'
class Register
  include Module1
  include Singleton
  def initialize
    @user_name = ''
    @user_id = ''
    @hash = Hash.new
    @array = Array.new
  end

  def users_amount
    puts 'please insert the quantity of users to register'
    @number = gets.chomp.to_i
    _flag = false
    while _flag == false
      if (3 >= @number && @number <= 15)
        return @number
        _flag = true
      else
        puts 'Please insert a number between 3 and 15'
      end
    end
  end

  def set_values
    @number.times do |i|
      puts 'Insert your name: '
      @user_name = gets.chomp
      _flag = false
      while _flag == false
        if (/[a-z]+/ === @user_name || /\d+/ === @user_name) && @user_name.length <= 11
          puts 'Insert your ID'
          @user_id = gets.chomp
          @hash.store(@user_id,@user_name)
          _flag = true
        else
          puts 'Please insert a User Name in lower case and no more than 11 characters'
        end
      end
    end
  end

  def type_of_conversion
    puts 'Please chose anp option 1, 2 or 3'
    puts '1. From Millimeters to centimeters'
    puts '2. From Centimeters to Meters'
    puts '3. From Meters to Kilometers'
    gets.chomp.to_i
  end
  def printing
    case type_of_conversion
      when 1
        millimeters_to_centimeters
      when 2
        centimeters_to_meters
      when 3
        meters_to_kilometers
    end
  end
  def calculation
    @hash.each {|id, name|}
    puts 'Do you want to make a Calculation?'
    puts 'YES'
    puts 'NO'
    _answer = gets.chomp
    if (_answer == 'YES' || _answer == 'yes' || _answer == 'y')
      printing
    else
      var = log "user names that did not make an operation are #{@array.push(name)}"
      puts var
      log(var)
    end
  end
  def log (_value)
    _file_example = File.open('execution.log', 'a')
    _file_example.write(_value)
    _file_example.close

  end
end
r = Register.instance
r.users_amount
r.set_values
r.type_of_conversion
r.calculation
