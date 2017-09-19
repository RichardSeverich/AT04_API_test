=begin
 Session 3 - Practice 3
1. Create a class with two methods

Method 1 :
No arguments defined
Should create an array with only numbers
According the value inserted ask for each value of the array and push it in a new array
Should create an alphabetical array
Should create a mixed array (numeral an alphabetical )
Return the 3 arrays

Method 2
Should receive 2 arguments (2 arrays)
should print only the elements in common between the 2 arrays received
should print the first element of both arrays
should print the last element of both arrays


Method 3
Should receive 2 arguments (2 arrays)
Should print the result of join both arrays but before join  need to extract :
-	the first element of the first array
-	the last element of the second array
Create an array with both elements extracted, return this array

Method 4
Should receive 1 arguments(the array from method 3)
Should print the array received

2. Instance the class and call to each method in order to interact with them. Please don’t use instanced, class or global variables. All actions should be performed calling the class and not inside the class

=end

class PracticeThree
  def method_one
    arrayNumbers = Array.new
    arrayLetters = Array.new
    print "Insert the number of elements you want for your arrays: "
    numberElements = gets.chomp.to_i
    puts "##### First array of numbers #####"
    puts "Inser only numbers"
    numberElements.times do |value|
      print "Insert value #{value+1}: "
      arrayNumbers.push(gets.chomp.to_i)
    end
    puts "##### Second array of elements alphabetics #####"
    puts "Inser only characters alphabetics"
    numberElements.times do |value|
      print "Insert value #{value+1}: "
      arrayLetters.push(gets.chomp)
    end
    arrayMix=arrayNumbers+arrayLetters
    return arrayNumbers, arrayLetters, arrayMix
  end

  def method_two(array_one, array_two)
    puts "The elements in common between the 2 arrays received"
    p array_one & array_two
    puts "First element array one: #{array_one.first}"
    puts "Last element array one: #{array_one.last}"
    puts "First element array two: #{array_two.first}"
    puts "Last element array two: #{array_two.last}"

  end

  def method_three(array_one, array_two)
    new_array = Array.new
    new_array.push(array_one.shift)
    new_array.push(array_two.pop)
    p array_one+array_two
    return new_array
  end

  def method_four(array)
    p array
  end
end

practice = PracticeThree.new
p array = practice.method_one
puts "Array One"
p array_one=[1, 2, 5, 15, 18,32]
puts "Array Two"
p array_two=[32, 58, 99, 101]
practice.method_two(array_one, array_two)
result=practice.method_three(array_one, array_two)
practice.method_four(result)
