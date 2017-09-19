=begin
method 1:
No arguments defined, should ask to the user the number of elements in the array
According the value inserted ask for each value of the array and push it in a new array
Return the array.
method 2:
Should receive 1 argument (the array returned in method 1), should print the array.
=end

class UserArray
  def enter_elements
    puts 'Enter the size of the array'
    size = gets.to_i
    @my_array = Array.new
    size.times do
      puts 'Enter a element'
      value = gets.chomp
      @my_array.push(value)
    end
    @my_array
  end

  def print_array(array)
    p array
  end
end

custom_array = UserArray.new
new_array = custom_array.enter_elements
custom_array.print_array(new_array)

# Or custom_array.print_array(custom_array.enter_elements)
