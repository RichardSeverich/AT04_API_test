=begin
 Session 3 - Practice 2
 1. Create a class with two methods
 method 1:
  _No arguments defined
  _Should ask to the user the number of elements in the array
  _According the value inserted ask for each value of the array and push it in a new array
  _Return the array
 method 2
 _Should receive 1 argument (the array returned in method 1)
 _should print the array

2. Instance the class and call to each method in order to interact with them.
Consider that method one shodul return the value that need to be used in second method.

=end

class PracticeTwo
  def method_one
    array = []
    print "Insert the number of elements you want for your array: "
    numberElements = gets.chomp.to_i
    numberElements.times do |value|
      print "Insert value #{value+1} : "
      array.push(gets.chomp)
    end
    return array
  end

  def method_two(array)
    p array
  end
end

practice = PracticeTwo.new
arrayOne = practice.method_one
practice.method_two(arrayOne)
