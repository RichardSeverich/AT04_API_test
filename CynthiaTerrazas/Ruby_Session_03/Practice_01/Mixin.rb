=begin
Write a module that print different type of greets (Hi Friend, good night, good afternoon, etc )
Write another module that print different ways to say bye (good bye, see you later, take care, etc)
Include both modules in a class
Print the different greeters using an instance of the class and calling to the module methods.
Move the modules to another file and include them adding the line :
	     require_relative "folder/ruby_file"

Implement Mixin and Library concept
=end

require_relative "ModuleA"
require_relative "ModuleB"

class Mixin
include A
include B
  def son

  end
end

mixin=Mixin.new
mixin.greet1
mixin.bye1
mixin.greet2
mixin.bye2
mixin.greet3
mixin.bye3
mixin.greet4
mixin.bye4