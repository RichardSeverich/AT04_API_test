class Array
  def create_array
    @my_array = [1, 2, 'Hello', 22, 'Bye']
    puts "The array is: #{@my_array}"
  end
  def print_first_element
   puts"The first element is:  #{@my_array.first}"
  end
  def print_last_element
    puts "The last element is: #{@my_array.last}"
  end
  def two_arrays
    _my_array_1 = ['a', 2, 'b', 4, 'd', 6]
    puts "First array is: #{_my_array_1}"
    _my_array_2 = ['c', 4, '3', 8, 'd', 9]
    puts "Second array is: #{_my_array_2}"
    puts "Common elements between them are #{_my_array_1 & _my_array_2}"
  end
end
a = Array.new
a.create_array
a.print_first_element
a.print_last_element
a.two_arrays