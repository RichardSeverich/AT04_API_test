
class MyHash
	def setSize(size)
		@myHash = Hash.new
		size.times do | index |
			puts "Enter key"
			key = gets.chomp
			puts "Enter value number"
			value = gets.chomp
			@myHash.store key, value
		end
	end

	def print_hash
		puts "********** PRINT HASH ********** "
		puts @myHash
	end

	def print_key
		puts "********** KEYS OF HASH ********** "
		puts @myHash.keys
	end

	def print_value
		puts "********** VALUES OF HASH ********** "
		puts @myHash.values
	end

	def exist_key?(key)
		puts "********** EXIST KEY ********** "
		@myHash.has_key?(key)

	end

	def exist_value?(value)
		puts "********** EXIST VALUE ********** "
	    @myHash.has_value?(value)
	end
end

myHash = MyHash.new()
puts "Enter Size of Hash"
myHash.setSize(gets.chomp.to_i)
myHash.print_hash
myHash.print_key
myHash.print_value
puts myHash.exist_key?("1")
puts myHash.exist_value?("10")
