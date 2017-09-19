class Exercise
  def first_method
    print "Input the array size: "
    size = gets.chomp.to_i
    array = Array.new
    size.times do
      print "Input the array current value: "
      array.push gets.chomp
    end
    array
  end

  def second_method array
    p array
  end
end

exercise = Exercise.new
array = exercise.first_method
exercise.second_method array
