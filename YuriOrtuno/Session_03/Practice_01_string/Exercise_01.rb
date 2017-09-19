
class ReturnArray

  #Create 1 method that is going to return an array
  def array
    ["samsung","nokia", "iphone"]
  end

  #Create 1 method that is going to print the first element of an array received as argument
  def first_element array = Array.new
    puts array.first
  end

  #Create 1 method that is going to print the last element of an array received as argument
  def last_element array = Array.new
    puts array.last
  end

  #Create 1 method that is going to receive two different arrays , and will print the common elements between both arrays
  def commom_element array = Array.new, array1 = Array.new
    puts "the elements commons are: #{array  & array1}"
  end

end



array = ReturnArray.new
newarray = array.array
p newarray
array.first_element newarray
array.last_element newarray

array1 = ["xperia","samsung","nokia", "iphone"]
array2 = ["motorola","samsung","nokia", "sony"]

array.commom_element array1,array2