
class Person
	def setPersons(size)
		@myHash = Hash.new
		size.times do | index |
			puts "Enter key or identification of person"
			key = gets.chomp
			puts "Enter value Name of Person"
			value = gets.chomp
			@myHash.store key, value
		end
	end

	def print_persons
		@myHash.each do |(key, value)|
			puts "Identification : #{key}"
			puts "Name : #{value}"
		end
	end

	def changeToUpperCase
		@myHash.map do |(key, value)|
			value.upcase
		end
	end

	def goodBye
		@myHash.each do |(key, value)|
			puts "Good Bye  #{value}"
		end
	end

end

myPerson = Person.new()
puts "Insert Number of Person that you want to enter"
myPerson.setPersons(gets.chomp.to_i)
puts "*** PRINT PERSON HASH ***"
myPerson.print_persons
puts "*** CHANGE NAMES TO UPERCASE ***"
puts "*** PRINT PERSONS WITH UPERCASE***"
puts myPerson.changeToUpperCase
puts "*** PRINT GOOD BYE***"
myPerson.goodBye
