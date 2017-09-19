
class MyMatch
	def User_Name
		puts "Enter Username with lowercase letter (a-z), number (0-9), an underscore"
		@UserName = gets.chomp
		if(/(^[a-z]+[_]+[0-9]+$)/  =~ @UserName)
			puts "Valid Username"
		else
			puts "Invalid Username"
		end
	end
end


myMatch = MyMatch.new
myMatch.User_Name
