class Practice
  def method1
    @array1 = Array.new
    print "Insert the number of elements: "
    number = gets.chomp.to_i
    number.times do |index|
      print "Insert the element: "
      @array1.push(gets.chomp)
    end
    @array1
  end

  def method1_print array
    p array
  end
end

other = Practice.new
other.method1_print(other.method1)