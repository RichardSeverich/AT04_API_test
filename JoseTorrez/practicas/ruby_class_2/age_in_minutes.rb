require_relative 'Age'
class AgeInMinutes
  CONVERSION = 365 * 24 * 60
  def initialize (user_name, user_age)
    @name = user_name
    @age = user_age
  end
  def yearsToMinutes
    puts "#{@name} has #{@age*CONVERSION} minutes of life"
  end

end
age= Age.new()
AgeInMinutes.new(age.name, age.age).yearsToMinutes