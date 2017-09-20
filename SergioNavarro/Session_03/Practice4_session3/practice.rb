class Practice
  attr_accessor :hash1
  def method1
    print "Insert the number of elements: "
    number = gets.chomp.to_i
    @hash1 = Hash.new
    number.times do |index|
      print "Insert the key: "
      key = gets.chomp
      print "Insert the value for key #{key}: "
      value = gets.chomp
      hash1.store key, value
    end
  end

  def method2
    p @hash1.keys
  end

  def method3
    p @hash1.values
  end

  def method4
    p @hash1
  end

  def method5
    print "Insert a key to find: "
    key = gets.chomp
    puts @hash1.has_key? key
  end

  def method6
    print "Insert an existing value: "
    value = gets.chomp
    puts @hash1.has_value? value
  end

end

other = Practice.new
other.method1
other.method2
other.method3
other.method4
other.method5
other.method6