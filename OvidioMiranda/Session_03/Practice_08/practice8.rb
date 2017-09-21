=begin
Session 3 - Practice 8
Using instanced class and also applying singleton :
1. Add a class that initialized the values of :
   User : Guest
   Message : Welcome to the city
   Visitors : 0
2. Inside the class add a method to :
   1. Add a user
   2. Add a welcome message
   3. Increment visitors amount
   4. Save all the users, and messages in a hash
   5. Using attr_accesor print the last user defined
Explain which differences you see between both definitions
=end
require 'singleton'
class Practice8
  include Singleton
  attr_reader :people
=begin
  1. Add a class that initialized the values of :
      User : Guest
  Message : Welcome to the city
  Visitors : 0
=end
  def initialize
    @user = 'Guest'
    @message = 'Welcome to the city'
    @visitors = 0
    @people = Hash.new
    @people = {users: [@user], messages: [@message], visitors: @visitors}
  end

  def add_a_user
    print 'Enter the amount of people to register:'
    number_persons = gets.chomp.to_i
    number_persons.times do
      print 'Enter the name: '
      @user = gets.chomp
      print 'Enter the message: '
      @message = gets.chomp
      @visitors += 1
      @people[:users].push(@user)
      @people[:messages].push(@message)
      @people[:visitors] = @visitors
    end
  end

end

sample = Practice8.instance
sample.add_a_user
#5. Using attr_accesor print the last user defined
p sample.people
puts "The last user is: #{sample.people[:users].last}"

