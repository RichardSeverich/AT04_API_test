=begin
Write a module that print different type of greets (Hi Friend, good night, good afternoon, etc )
Write another module that print different ways to say bye (good bye, see you later, take care, etc)
Include both modules in a class
Print the different greeters using an instance of the class and calling to the module methods.
=end

require_relative './bye'
require_relative './greets'

class Salutations
  include Bye
  include Greet
end

salutation = Salutations.new

salutation.hi_friend
salutation.good_night
salutation.good_afternoon
salutation.good_bye
salutation.see_you
salutation.take_care
