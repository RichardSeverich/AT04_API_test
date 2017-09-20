require_relative './conversions'
require 'singleton'

class Registration
  include Conversions
  include Singleton

  attr_accessor :users_ids

  def initialize
    @username = nil
    @id = nil
    @users_ids = Hash.new
    initialize_logger
  end

  def enter_username_id
    loop do
      append_msg_to_log 'Enter a valid username'
      append_to_log @user = gets.chomp
      break if @user[/^[a-z\d]{1,11}$/]
    end
    loop do
      append_msg_to_log 'Enter a valid id'
      append_to_log @id = gets.chomp
      break if @id[/^[\d]+$/]
    end
    @users_ids.store(@user, @id)
  end

  def enter_users
    number = nil
    loop do
      append_msg_to_log 'Enter a valid number of users to create (3-15)'
      append_to_log number = gets.chomp.to_i
      break if number >= 3 && number <= 15
    end
    number.times do
      enter_username_id
    end
  end

  def ask_conversion_type
    option = nil
    loop do
      append_msg_to_log 'Conversion options:'
      append_msg_to_log "a)From millimeters to centimeters\nb)From centimeters to meters\nc)From meters to kilometers"
      append_msg_to_log 'Option selected by the user: '
      append_to_log option = gets.chomp
      break if option[/^[abc]$/]
    end
    option
  end

  def perform_conversion(option)
    units_from  = Hash['a', 'mm', 'b', 'cm', 'c', 'm']
    units_to = Hash['a', 'cm', 'b', 'm', 'c', 'km']
    value = nil
    loop do
      append_msg_to_log "Insert the value in #{units_from[option]}: "
      append_to_log value = gets.chomp
      break if value[/^[\d.]+$/]
    end
    conversion = nil
    case option
      when 'a'
        conversion = mm_to_cm(value.to_f)
      when 'b'
        conversion = cm_to_m(value.to_f)
      when 'c'
        conversion = m_to_km(value.to_f)
    end
    append_msg_to_log "#{value}#{units_to[option]} represent #{conversion}#{units_to[option]}"
  end

  def ask_conversion_to_users
    no_conversion_users = Array.new
    @users_ids.each do |key, value|
      response = nil
      loop do
        append_msg_to_log "#{key}: you want a perform a conversion?"
        append_to_log response = gets.chomp
        break if response[/^(YES|NO)$/]
      end
      if response == 'YES'
        perform_conversion(ask_conversion_type)
      else
        no_conversion_users.push(key)
      end
    end
    no_conversion_users
  end

  def initialize_logger
    @logger_file = File.open('execution.log', 'w+')
  end

  def close_logger
    append_msg_to_log 'Logger closed'
    @logger_file.close
  end

  def append_to_log(data)
    @logger_file.write "#{Time.now.strftime('%Y%m%d%H%M%S%L')}: "
    @logger_file.puts data
  end

  def append_msg_to_log(data)
    puts data
    append_to_log data
  end
end

registration = Registration.instance
registration.enter_users
registration.append_msg_to_log "Users that no performed the conversion: #{registration.ask_conversion_to_users}"
registration.close_logger
