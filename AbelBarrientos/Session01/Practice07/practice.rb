=begin
Create a ruby class with 1 method :
  - Insert user name and Age ,ask by prompt.
Create another ruby class with 1 method to :
  - Calculate and print the age in minutes, this “age” is going to receive as a parameters of the class

1. Instance the class to get the values of the first method and assign this value to a variable.
2. This variable needs to be send to the instance of the second class as a parameter to perform the calculation.

=end

class User

  attr_reader :age

  def initialize name, age
    @name = name
    @age = age
  end

end

class UserAge

  def initialize user
    @user = user
  end

  def age_in_minutes
    365 * 24 * 60 * @user.age
  end

end

print "Input the User name: "
name = gets.chomp
print "Input the User age: "
age = gets.chomp.to_i

user = User.new name, age
user_age = UserAge.new user
puts "The age of the user in minutes is: #{user_age.age_in_minutes}"
