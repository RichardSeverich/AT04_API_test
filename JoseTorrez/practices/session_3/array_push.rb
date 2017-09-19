class ArrayPush
  def create_arrays
    @mix_array = Array.new
    @numeric_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
    @alphabetical_array = %w(a b c d e f g h i j)
    @mix_array = @numeric_array + @alphabetical_array
    puts "Numeric array is: #{@numeric_array}"
    puts "Alphabetical array is: #{@alphabetical_array}"
    puts "Mixed array is: #{@mix_array}"
  end
  def common_elements (first_array, second_array)
    first_array = @numeric_array
    second_array = @mix_array
    puts "Common elements are: #{first_array & second_array}"
  end
  def join_elements (first_array , second_array)
    @shifted_array = Array.new
    _auxiliary = Array.new
    first_array = @alphabetical_array
    _auxiliary = first_array.shift
    @shifted_array.push(_auxiliary)
    second_array = @numeric_array
    _auxiliary = second_array.pop
    @shifted_array.push(_auxiliary)
    puts "shifted Array is:  #{@shifted_array}"
  end
  def printing (print_array)
    print_array = @shifted_array
    puts "The Array is #{print_array}"
  end
end
a = ArrayPush.new
a.create_arrays
a.common_elements([],[])
a.join_elements([],[])
a.printing([])