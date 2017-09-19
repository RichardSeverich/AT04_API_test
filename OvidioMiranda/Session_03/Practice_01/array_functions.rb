=begin
Practice 1 - Session 3
 Create 1 method that is going to return an array
 Create 1 method that is going to print the first element of an array received as argument
 Create 1 method that is going to print the last element of an array received as argument
 Create 1 method that is going to receive two different arrays , and will print the common elements between both arrays
=end

class ArrayFunctions
  def return_array
    [1, 2, 3, 4, 5]
  end

  def first_element(array)
    array.first
  end

  def last_element(array)
    array.last
  end

  def common_element(first_array, second_array)
    first_array & second_array
  end
end

sample = ArrayFunctions.new
p sample.return_array
p sample.first_element(["One", "Two", "Three"])
p sample.last_element([32, 58, 99, 101])
p sample.common_element([1, 2, 3, 4, 5, 9], [1, 2, 7, 8, 9])
