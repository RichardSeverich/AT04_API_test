=begin
Using instanced class and also applying singleton :
Add a class that initialized the values of :
User : Guest
Message : Welcome to the city
Visitors : 0
Inside the class add a method to :
Add a user
Add a welcome message
Increment visitors amount
Save all the users, and messages in a hash
Using attr_accesor print the last user defined

=end

def singletn_hotel
  @singletn_hotel ||= Hotel.new
end

class Hotel
  attr_accessor :user
  def initialize()
    @user="guest"
    @message="welcome to the city"
    @visitors=0
  end

  def register()
    puts" how many persons do you want to regiter"
    tam=gets.chomp.to_i
    @user=Hash.new
    tam.times do |values|
      puts "please enter the name of the guest"
      user=gets.chomp.to_s
      puts "please enter the message for this guest"
      message=gets.chomp.to_s
      @user.store(user,message)
      @visitors+=1
    end
    puts @visitors
  end
end

 singletn_hotel.register # Output => 3
 singletn_hotel.object_id # Output => 18165640
 singletn_hotel.user ="ana"
 puts singletn_hotel.user
 hotel=Hotel.new
 puts hotel.user



