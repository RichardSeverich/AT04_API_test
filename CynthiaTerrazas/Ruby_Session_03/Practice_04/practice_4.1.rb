=begin

1. Create a class with two methods
method 1 :

No arguments defined
Should create an array with only numbers
According the value inserted ask for each value of the array and push it in a new array
Should create an alphabetical array
Should create a mixed array (numeral an alphabetical )
Return the 3 arrays

method 2
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
class Array3
  def method_1()
    puts "please enter the size of the array"
    tam= gets.chomp.to_i

    numeral=Array.new
    tam.times do |value|
      puts "please enter a nunber"
      a=gets.chomp.to_i

      @numeral=numeral.push(a)
    end

    alphabetical=Array.new
    tam.times do |value|
      puts "please enter a word"
      b=gets.chomp.to_s

      @alphabetical=alphabetical.push(b)
    end


    mix=Array.new
    tam.times do |value|
      puts "please enter a word or number"
      c=gets.chomp

      @mix=mix.push(c)
    end
    p @numeral,@alphabetical,@mix
    return @numeral,@alphabetical,@mix
  end

  def method_2(a,b)
    p a&b
  end

  def method_3(arr1,arr2)
    x=arr1.shift
    z=arr2.pop
    arr1.push(arr2)
    p arr1
    @res=Array.new
    @res.push(x,z)
    return @res
  end
  def method_4()
    p @res
  end
end


array=Array3.new
array.method_1
array.method_2([1,2,3,4,5],[1,6,2,8,9])
array.method_3([1,2,3],[7,8,9])
array.method_4