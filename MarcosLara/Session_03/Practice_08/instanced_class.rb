class UserRegister
  attr_accessor :user

  def initialize
    @user = 'Guest'
    @message = 'Welcome to the city'
    @visitors = 0
    @users_hash = Hash.new
  end

  def add_user_message
    puts 'Enter user name'
    @user = gets.chomp
    puts 'Enter message'
    @messages = gets.chomp
    @users_hash.store(@user, @message)
    increase_visitors_count
  end

  def increase_visitors_count
    @visitors += 1
  end
end

user_register_one = UserRegister.new
puts "Last user registered #{user_register_one.user}"
user_register_one.add_user_message
puts "Last user registered #{user_register_one.user}"

user_register_two = UserRegister.new
puts "Last user registered #{user_register_two.user}"
