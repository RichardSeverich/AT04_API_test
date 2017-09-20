=begin 1. Create a class with two methods
method 1:
No arguments defined
Should ask to the user the number of elements in the array
According the value inserted ask for each value of the array and push it in a new array
Return the array
method 2
Should receive 1 argument (the array returned in method 1)
should print the array

2. Instance the class and call to each method in order to interact with them. Consider that method one shodul return the value that need to be used in second method.
=end

class Practicess
  def method1
    size = gets.chomp.to_i
    array = Array.new
    size.times do
      array.push(gets.chomp)
    end
    array
  end

  def method2 array = Array.new
    p array
  end

end


practice = Practicess.new()
practice.method2 practice.method1
