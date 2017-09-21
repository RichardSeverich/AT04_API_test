class SingletonsRuby
  attr_accessor :hash
  def initialize
    @user = 'visitor'
    @message = 'Welcome to the city'
    @visitors = 0
  end
  def set_parameters
    @hash = Hash.new
    @user = 'JJ'
    @message = 'Welcome to the Jungle       G&R'
    @hash.store(@user, @message)
    @visitors += 1
  end
  def get_parameters
    @user
    @message
    @visitors
    @hash
  end

end
s = SingletonsRuby.new
s.set_parameters
s.get_parameters
s.hash