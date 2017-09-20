require 'singleton'
class User

  include Singleton
  attr_writer :user
  attr_writer :message
  attr_reader :user_complete_hash
  @user_complete_hash
  @@user_simple_hash = {}

  def initialize
    @user = "Guest"
    @message = "Welcome to the city"
    @visitors = 0
    @index = 1
    @@user_simple_hash = {
      user: @user,
      message: @message
    }
    @user_complete_hash = {}
    @user_complete_hash.store @index, @@user_simple_hash
  end

  def incr_visitors number
    @visitors += number
  end

  def save
    @@user_simple_hash = {
      user: @user,
      message: @message
    }
    @index += 1
    @user_complete_hash.store @index, @@user_simple_hash
  end

  def hash
    p @@user_simple_hash
    p @user_complete_hash
  end
end


user = User.instance
user1 = User.instance
user1.user = "Someone"
user1.message = "Is here"
user1.save
user1.incr_visitors 5
user.user = "Someone else"
user.message = "Is here too"
user.save
user.incr_visitors 10
user.hash
p user.user_complete_hash.values.last
