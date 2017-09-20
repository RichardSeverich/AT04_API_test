require 'faker' 
class Users
	def generate
		prng = Random.new
		rand(100)

		@count = 1
		@user = "USER_"
		@pass =  "PASS_"
		@destination =  
		@myHashUsers = Hash.new
		@myHashPass = Hash.new
		@myHashDate = Hash.new
		@myHashDestination = Hash.new
		@myArrayDestinations = ["La Paz","Cochabamba","Santa Cruz","Oruro","Beni","Chuquisaca","Pando","Sucre","Potosi"]
		prng = Random.new
		until @count > 100
			if(@count.to_s.length<2)
				@number_user = "0"+@count.to_s
			else
				@number_user = @count.to_s
			end
			@myHashUsers.store @count, "%s%s" % [@user,@number_user]
			@myHashPass.store @count, "%s%s" % [@pass,@number_user]
			@myHashDate.store @count, time_rand
			@myHashDestination @count, @myArrayDestinations[prng.rand(9)]
			@count +=1
		end


	end

	def printUsers()
		@myHashUsers.each do |(key, value)|
			puts "#{value}  |  #{@myHashPass[key]}  |  #{@myHashDate[key]}"
		end
	end

	def time_rand from = 0.0, to = Time.now
  		Time.at(from + rand * (to.to_f - from.to_f)).strftime("%m/%d/%Y")
	end
	
end

puts "| USUARIO | CONTRASEÑA | TRAVEL_DATE | DESTINATION | "
users = Users.new
users.generate()
users.printUsers()
