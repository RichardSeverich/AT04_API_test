=begin
Create 1 method that is going to return an array
Create 1 method that is going to print the first element of an array received as argument
Create 1 method that is going to print the last element of an array received as argument
Create 1 method that is going to receive two different arrays , and will print the common elements between both arrays
=end
class ArrayP
  def show_array(arr)
    p arr
  end

  def first_element(arr)
    puts arr.first
  end

  def last_element(arr)
    puts arr.last
  end

  def common(a,b)
   p a&b
  end
end

a=ArrayP.new
a.show_array(["one","two","three","four","five","six"])
a.first_element(["one","two","three","four","five","six"])
a.last_element(["one","two","three","four","five","six"])
a.common([1,2,3,4,5,6],[1,2,3,8,7,0,9,11])