require 'singleton'  
class MySingleton
	attr_accessor :User
	attr_accessor :Message
	attr_accessor :Visitors
	include Singleton  
	def initialize
        @User = "Guest"
		@Message = "Welcome to the city"
		@Visitors = 0
 	end
 	def Add_User(user)
		@User = user
 	end

 	def Add_Message(message)
 		@Message = message
 	end

 	def Incremet_Visitors
 		@Visitors +=1	
 	end
end

mySingleton = MySingleton.instance 
puts "********* Data of first instance *************"
puts "User     : #{mySingleton.User}"
puts "Message  : #{mySingleton.Message}"
puts "Visitors : #{mySingleton.Visitors}"
puts " *** Now Modify with user: RichardSeverich, Message: Welcome to the country and Increment Visitors ***"
mySingleton.Add_User("RichardSeverich")
mySingleton.Add_Message("Welcome to the Country")
mySingleton.Incremet_Visitors()
puts "********* Data of second instance *************"
mySingleton = MySingleton.instance 
puts "User     : #{mySingleton.User}"
puts "Message  : #{mySingleton.Message}"
puts "Visitors : #{mySingleton.Visitors}"
