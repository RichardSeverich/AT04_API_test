=begin
Create a class with two methods
method 1:
No arguments defined
Should ask to the user the number of elements in the array
According the value inserted ask for each value of the array and push it in a new array
Return the array
method 2
Should receive 1 argument (the array returned in method 1)
should print the array

2. Instance the class and call to each method in order to interact with them.
Consider that method one shodul return the value that need to be used in second method.
=end
class Array02
  def created()
    puts "please enter a number"
    tam= gets.chomp.to_i

    arr=Array.new
    tam.times do |value|
      puts "please enter a value of the array"
      a=gets.chomp.to_i

      @result=arr.push(a)
    end
    return @result
  end

  def show()
    p @result
  end
end

array=Array02.new
array.created
array.show
