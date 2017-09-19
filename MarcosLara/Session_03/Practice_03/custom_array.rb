class CustomArray
  def create_arrays
    numbers_array = Array.new
    letters_array = Array.new
    mixed_array = Array.new
    3.times do |i|
      puts 'Enter the size of the array of %s' % [i == 0 ? 'numbers' : i == 1 ? 'letters' : 'numbers & letters']
      size = gets.to_i
      size.times do
        puts 'Enter a value'
        case i
          when 0
            number = gets.to_i
            numbers_array.push(number)
          when 1
            letter = gets.chomp
            letters_array.push(letter)
          else
            value = gets.chomp
            mixed_array.push(value.to_i) if value =~ /[[:digit:]]/
            mixed_array.push(value) if value =~ /[[:alpha:]]/
        end
      end
    end
    return numbers_array, letters_array, mixed_array
  end

  def print_common(array_one, array_two)
    puts 'Elements in common'
    p array_one & array_two
    puts 'First element of bot arrays'
    p array_one.first
    p array_two.first
    puts 'Last element of bot arrays'
    p array_one.last
    p array_two.last
  end

  def print_join(array_one, array_two)
    drop_array = Array.new
    drop_array.push(array_one.shift)
    drop_array.push(array_two.pop)
    p array_one + array_two
    drop_array
  end

  def print_array(array)
    p array
  end
end

# Array creation
custom_array = CustomArray.new
arrays = custom_array.create_arrays

# Print of created array
puts 'These are the Arrays'
custom_array.print_array(arrays[0])
custom_array.print_array(arrays[1])
custom_array.print_array(arrays[2])

# Arrays operations
custom_array.print_common(arrays[0], arrays[1])
custom_array.print_common(arrays[1], arrays[2])
drop_array = custom_array.print_join(arrays[0], arrays[2])

custom_array.print_array(drop_array)
