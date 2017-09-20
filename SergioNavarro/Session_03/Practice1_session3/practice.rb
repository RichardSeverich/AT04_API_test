class Practice
  def return_array
    @@stuff = %w[1 2 3 OneThing OtherThing 3.0 LastThing]
    puts "This is the array:"
    p @@stuff
  end

  def return_first
    puts "This is the first element of the array:"
    puts @@stuff.first
  end

  def return_last
    puts "This is the last element of the array:"
    puts @@stuff.last
  end

  def return_mix array1, array2
    puts "This is a mix of array1 and array2:"
    p array1 + array2
  end
end

other = Practice.new
other.return_array
other.return_first
other.return_last
stuff2 = %w[red blue white black]
stuff1 = %w[1 2 3 4 5]
other.return_mix stuff2, stuff1