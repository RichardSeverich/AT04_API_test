require 'singleton'
class Guest_Singleton
  include Singleton
  attr_accessor :user
  attr_accessor :message
  attr_accessor :visitor

  def initialize
    @guest = Hash.new
    @user = "Guest"
    @message = "Welcome to the city"
    @visitor = 0
    @guest.store(user, message)
    @value = 0
  end

  def any
    @value= 10
  end
  def some
    @value
  end

  def input_values
    puts "insert user: "
    @user = gets.chomp
    puts "insert message: "
    @message = gets.chomp
    @guest.store(user,message)
    @visitor += 1
  end

end

b1 = Guest_Singleton.instance
p b1.any # Output => 10
puts b1.input_values
puts b1.user

b2 = Guest_Singleton.instance
p b2.some # Output => 10
puts b2.input_values
puts b2.user
