=begin
Write a module that print different type of greets (Hi Friend, good night, good afternoon, etc ) 
Write another module that print different ways to say bye (good bye, see you later, take care, etc)
Include both modules in a class
Print the different greeters using an instance of the class and calling to the module methods.
Move the modules to another file and include them adding the line :
require_relative "folder/ruby_file" 	                	
=end
class Greets
  def hi
  	puts "Hello"
  	puts "Hi Friend"
  	puts "good morning"
  	puts "good afternoon"
  	puts "good evening"
  end
  def bye
  	puts "Bye"
  	puts "Hi Friend"
  	puts "See you later"
  	puts "See you tomorrow"
  	puts "Take care"
  end
end
