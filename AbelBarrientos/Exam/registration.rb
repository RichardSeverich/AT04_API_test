require_relative "./conversion"
require_relative "./logger"
require 'singleton'

class Registration

  include Conversion
  include Logger
  include Singleton
  attr_accessor :hash
  @hash

  def initialize
    @username = nil
    @id = nil
    @hash = {}
    add_line Time.now.strftime("%d/%m/%Y %H:%M:%s")
  end

  def insert_username
    line = "Insert the Username: "
    puts line
    add_line line
    username = gets.chomp
    if /^[a-z\d_]{1,11}$/ =~ username
      @username = username
      add_line @username
    end
  end

  def insert_id
    line = "Insert the ID: "
    puts line
    add_line line
    id = gets.chomp
    if /^\d+$/ =~ id
      @id = id.to_i
      add_line @id
    end
  end

  def save
    @hash.store @id, @username
  end

  def amount_of_users
    line = "How many users do you wanna insert?"
    puts line
    add_line line
    amount = gets.chomp
    if /^\d+$/ =~ amount && amount.to_i >= 3 && amount.to_i <= 15
      @amount = amount.to_i
      add_line @amount
    end
    @amount.times do |number|
      insert_username
      insert_id
      save
    end
  end

  def type_of_conversion
    first_line = "Which type of conversion do you want?"
    puts first_line
    add_line first_line
    second_line = "a: Milimeters to Centimeters"
    puts second_line
    add_line second_line
    third_line = "b: Centimeters to Meters"
    puts third_line
    add_line third_line
    fourth_line = "c: Meters to Kilometers"
    puts fourth_line
    add_line fourth_line
    type = gets.chomp
    if /^[abc]$/ =~ type
      add_line type
      return type
    end
  end

  def value_of_conversion type
    line = "Insert the value: "
    puts line
    add_line line
    number = gets.chomp
    if /^\d+$/ =~ number
      case type
      when "a"
        result = mm_to_cm number.to_i
        line = "Prints: #{number}mms represents #{result}cms"

      when "b"
        result = cm_to_m number.to_i
        line = "Prints: #{number}cms represents #{result}ms"
      when "c"
        result = m_to_km number.to_i
        line = "Prints: #{number}ms represents #{result}kms"
      end
      puts line
      add_line line
    end
  end

  def perform_calc
    array = Array.new
    @hash.each { |key, value|
      line = "User: #{value} wanna perform a calculation? YES/NO"
      puts line
      add_line line
      answer = gets.chomp
      if /(YES|NO)/ =~ answer
        if answer == "YES"
          type = type_of_conversion
          value_of_conversion type
        end
        if answer == "NO"
          line = "Good Bye, #{value}"
          puts line
          add_line line
          array.push value
        end
      end
    }
    array
  end
end

registration = Registration.instance
registration.amount_of_users
p registration.perform_calc
