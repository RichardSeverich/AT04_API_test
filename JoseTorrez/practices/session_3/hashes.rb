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
end
