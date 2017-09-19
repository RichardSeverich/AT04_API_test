class ArrayInteraction
  def fill_array
    puts 'Introduce the size of the array'
    _elements_quantity = gets.chomp.to_i
    @my_array = Array.new
    _elements_quantity.times do |index|
      puts 'Introduce an element for the array'
      _element = gets.chomp
      @my_array.push(_element)
    end
    @my_array
  end
  def receive_array (_my_array)
      _my_array = @my_array
      puts "The elements of the array are #{_my_array}"
  end
end
a = ArrayInteraction.new
a.fill_array
a.receive_array([])