class MyArray
	def getArray
	puts "Enter Size of Array"
	size = gets.chomp.to_i
	myArray = Array.new(size)
	size.times do | index |
		puts "Enter value number #{index + 1}"
		myArray.push(gets.chomp.to_i)
		end
	myArray
	end
	def printArray(myArray)
		puts myArray
	end
end

myArray = MyArray.new
myArray.printArray(myArray.getArray)

