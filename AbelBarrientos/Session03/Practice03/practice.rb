class Exercise

  def method_one
    only_numbers = %w{ 1 2 3 4 5}
    only_alphabetical = Array.new
    mixed_array = Array.new
    puts "Input #{only_numbers.size} values"
    counter = 0
    while only_numbers.size > counter do
      print "Add value: "
      value = gets.chomp
      only_alphabetical.push value
      mixed_array.push only_numbers[counter], only_alphabetical[counter]
      counter += 1
    end
    return only_numbers, only_alphabetical, mixed_array
  end

  def method_two array_one, array_two
    p array_one & array_two
    puts "First items: #{array_one.first}, #{array_two.first}"
    puts "Last items: #{array_one.last}, #{array_two.last}"
  end

  def method_three array_one, array_two
    array_one.shift
    array_two.pop
    array_one + array_two
  end

  def method_four array
    p array
  end

end

exercise = Exercise.new
first_array, second_array, third_array = exercise.method_one
p first_array
p second_array
p third_array
exercise.method_two first_array, third_array
exercise.method_two second_array, third_array
last_array = exercise.method_three first_array, second_array
exercise.method_four last_array
