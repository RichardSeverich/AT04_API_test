
# You should install faker with the following command: 
# gem install faker
require 'faker'
class MyClass
	def generateRamdonUsers
		@myHash = Hash.new
		count = 1
		until count > 100
			@myHash.store count, getRandomName
			count +=1
		end
		@myHash
	end

	def getRandomName
		flag = false
		until flag 
			@name = Faker::Name.first_name.downcase
			if(/(^[a-z]{1,8}$)/  =~ @name)
				flag = true
			end
		end
	@name
	end

	def getNamesWithNumber(number)
		@myHashRestricted = Hash.new
		@myHash.each do |(key, value)|
			if key.to_s.chars.first == number
				@myHashRestricted.store key, value
			end
		end
	@myHashRestricted
	end

	def getNamesWithCharacter(myChar)
		@myHashRestrictedChars = Hash.new
		@myHash.each do |(key, value)|
			if value.to_s.chars.first == myChar
				@myHashRestrictedChars.store key, value
			end
		end
	@myHashRestrictedChars
	end

	def group(name)
		@myHash.each do |(key, value)|
			if value.to_s == name
				if (key >= 1 && key < 25)
					puts "User belong Group 1"
				end
				if (key > 26 && key < 50)
					puts "User belong Group 2"
				end
				if (key > 51 && key < 75)
					puts "User belong Group 3"
				end
				if (key > 76 && key <= 100)
					puts "User belong Group 4"
				end
			end
		end
	end

	def printHash(hash)
		hash.each do |(key, value)|
			puts "key : #{key}	|	Name : #{value}"
		end
	end

end


myClass= MyClass.new
puts " ***** THIS IS THE ORIGINAL HASH WITH 100 NAMES *****"
myClass.printHash(myClass.generateRamdonUsers)
puts " ***** ENTER THE KEY NUMBER OF YOU PREFER *****"
flag = false
until flag 
	var = gets.chomp
	if(/(^[0-9]{1}$)/ =~ var)
		flag = true
	else
		puts " ***** ENTER NUMBER WITH ONE DIGIT TRY AGAIN PLEASE *****"
		puts " ***** ENTER THE KEY NUMBER OF YOU PREFER *****"
	end
end
myClass.printHash(myClass.getNamesWithNumber(var))
puts " ***** ENTER CHARACTER DO YOU PREFER *****"
flag = false
until flag 
	var = gets.chomp
	if(/(^[a-z]{1}$)/ =~ var)
		flag = true
	else
		puts " ***** ENTER ONE CHARACTER *****"
		puts " ***** ENTER CHARACTER DO YOU PREFER *****"
	end
end
myClass.printHash(myClass.getNamesWithCharacter(var))
puts " ***** ENTER THE NAME DO YOU PREFER *****"
flag = false
until flag 
	var = gets.chomp
	if(/(^[a-z]{1,8}$)/ =~ var)
		flag = true
	else
		puts " ***** ENTER THE NAME DO YOU PREFER*****"
		puts " ***** ENTER LOWER CASE NAME PLEASE *****"
	end
end
myClass.group(var)
