class Practice
  def three_arrays
    array1 = [1, 2, 3, 4, 5]
    array2 = ['a', 'b', 'c', 'd', 'e']
    array3 = array1 + array2
    return array1, array2, array3
  end

  def return_common array1, array2
    puts "Common values:"
    p array1 & array2
    puts "First, last element of both arrays:"
    p array1.first, array2.first, array1.last, array2.last
  end

  def array_join array1, array2
    array3 = Array.new
    array3.push(array1.first)
    array3.push(array2.last)
    return array3
  end

  def print_array3 array
    puts "Array from third method:"
    p array
  end
end

other = Practice.new
other.return_common other.three_arrays, other.three_arrays
other.print_array3 other.array_join other.three_arrays, other.three_arrays