class MyArray
	def return
	my_array = [0,1,2,3,4,5,6,7,8,9]
	end
	def printFirstElement(myArray)
	puts myArray.first()
	end
	def printLastElement(myArray)
	puts myArray.last()
	end
	def printCommonElements(myArrayOne, myArrayTwo)
	print myArrayOne & myArrayTwo 
	end
end
myArray = MyArray.new()
puts "********** RETURN ARRAY **********"
print myArray.return
puts ""
puts "********** RETURN FIRST ELEMENT **********"
myArray.printFirstElement(myArray.return)
puts "********** RETURN LAST ELEMENT **********"
myArray.printLastElement(myArray.return)
puts "********** RETURN COMMON ELEMENT **********"
myArray.printCommonElements(myArray.return, [0,1,2,3,4,5])
