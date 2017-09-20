
class MyMatch
	def User_Name
		flag = false
		until flag 
			puts "Enter Username with lowercase letter (a-z), number (0-9), an underscore"
			@UserName = gets.chomp
			if(/(^[a-z]+[_]+[0-9]+$)/  =~ @UserName)
				puts "Valid Username"
				flag = true
				else
				puts "Invalid Username"
			end
		end
	end

	def User_Pasword
		flag = false
		until flag 
			puts "Enter Password with lowercase letter (a-z), number (0-9), "
			puts "an underscore and the length have to be between 8 and 16 characters"
			@Pasword = gets.chomp
			if(/(^[a-z0-9_]{8,16}$)/  =~ @Pasword)
				puts "Valid Pasword"
				flag = true
				else
				puts "Invalid Pasword"
			end
		end
	end

		def User_Email
		flag = false
		until flag 
			puts "Enter email in format anything@domain.com  "
			@Email = gets.chomp
			if(/^[a-zA-Z0-9._-]+@[a-zA-Z0-9]+[.]+([a-z.]{0,3}[a-z.])([a-z][a-z])$/  =~ @Email)
				puts "Valid Email"
				flag = true
				else
				puts "Invalid Email"
			end
		end
	end
end

myMatch = MyMatch.new
myMatch.User_Name
myMatch.User_Pasword
myMatch.User_Email
