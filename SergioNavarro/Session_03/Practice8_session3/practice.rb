class Practice
  attr_accessor :hash1
  def initialize
    @user = 'Guest'
    @message = "Welcome to the city"
    @visitors= 0
    @hash1 = Hash.new
  end

  def setting_up
    @hash1.store(@user, @message)
    print "Change the user: "
    @user = gets.chomp
    print "Change the message"
    @message = gets.chomp
    @visitors += 1
  end
end

other = Practice.new
other.setting_up
p other.hash1.to_a.last