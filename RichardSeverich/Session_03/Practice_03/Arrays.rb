class MyArray
	def getArray
	myArrayNumber = getArrayOf("numbers")
	myArrayAlpha  = getArrayOf("alphabetical")
	myArrayMix	  = getArrayOf("mixed")
	return myArrayNumber, myArrayAlpha, myArrayMix
	end
	
	def getArrayOf(typeOfArray)
	puts "Enter Array Size of #{typeOfArray}"
	size = gets.chomp.to_i
	myArray = Array.new()
	size.times do | index |
		puts "Enter value number #{index + 1} of #{typeOfArray} Array"
			if(typeOfArray =="numbers")
				myArray.push(gets.chomp.to_i)
				puts "ingreso a numeros"
			else
				myArray.push(gets.chomp)
			end
		end
	return myArray
	end

	def printArray_01(myArrayOne, myArrayTwo)
		puts "***********COMMON ELEMENTS***********"
		puts myArrayOne & myArrayTwo
		puts "***********FIRST ELEMENT OF FIRST ARRAY ***********"
		puts myArrayOne.first()
		puts "***********FIRST ELEMENT OF SECOND ARRAY ***********"
		puts myArrayTwo.first()
		puts "***********LAST ELEMENT OF FIRST ARRAY ***********"
		puts myArrayOne.last()
		puts "***********LAST ELEMENT OF SECOND ARRAY ***********"
		puts myArrayTwo.last()
	end

	def printArray_02(myArrayOne, myArrayTwo)
		puts "***********JOIN ELEMENTS***********"
		puts myArrayOne + myArrayTwo
		puts "***********FIRST AND LAST ELEMENT OF FIRST AND SECOND ARRAY ***********"
		return [myArrayOne.first,myArrayTwo.last]
	end

	def printArray_03(myArray)
		puts myArray
	end
end

myArray = MyArray.new
myArray01, myArray02, myArray03 =  myArray.getArray
myArray.printArray_01(myArray02,myArray03)
myArray.printArray_03(myArray.printArray_02(myArray02,myArray03))
