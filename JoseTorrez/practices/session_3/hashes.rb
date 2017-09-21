class Hashes
  def hash_quantity
    puts 'Introduce the quantity of elements in the hash'
    @quantity = gets.chomp.to_i
  end

  def fill_hash
    @hash = Hash.new
    @quantity.times do |index|
      puts 'Introduce the key'
      _key = gets.chomp.to_s
      puts 'Introduce the value'
      _value = gets.chomp.to_s
      @hash.store(_key, _value)
    end
  end
  def printing_keys
    p "The keys are: #{@hash.keys}"
  end
  def printing_values
    p "The values are: #{@hash.values}"
  end
  def has_key
    puts'Introduce the key for search'
    _key = gets.chomp
    if @hash.has_key?(_key)
      puts 'The key is in the Hash'
    else
      puts 'The key is not in the Hash'
    end
  end
  def has_value
    puts 'Introduce the value for search'
    _value = gets.chomp
    if @hash.has_value?(_value)
      puts 'The value is in the Hash'
  else
    puts 'The value is not in the Hash'
      end
  end
  def print_hash
    puts "the hash is: #{@hash}"
  end
end
h = Hashes.new
h.hash_quantity
h.fill_hash
h.print_hash
h.printing_keys
h.printing_values
h.has_key
h.has_value


