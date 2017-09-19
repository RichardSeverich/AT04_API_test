=begin
Practice 9
1.- Write a module that print different type of greets (Hi Friend, good night, good afternoon, etc )
2.- Write another module that print different ways to say bye (good bye, see you later, take care, etc)

3.- Include both modules in a class
4.- Print the different greeters using an instance of the class and calling to the module methods.
5.- Move the modules to another file and include them adding the line :
	     require_relative "folder/ruby_file"
Implement Mixin and Library concept
=end
require_relative "greet"
require_relative "bye"

class Greeting
  include GREET
  include BYE
end

greeting=Greeting.new

greeting.hi_friend
greeting.good_morning
greeting.good_afternoon
greeting.good_night

greeting.good_bye
greeting.see_you_later
greeting.take_care
