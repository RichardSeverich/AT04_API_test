class HashExample

  attr_reader :hash

  def create_hash
    puts "Input the hash length"
    @size = gets.chomp.to_i
    @hash = {}
  end

  def add_value
    @size.times do
      puts "Input the key:"
      @key = gets.chomp
      puts "Input the value:"
      @value = gets.chomp
      @hash.store @key, @value
    end
  end

  def print_hash_keys
    puts "Hash Keys:"
    p @hash.keys
  end

  def print_hash_values
    puts "Hash Values:"
    p @hash.values
  end

  def print_hash
    puts "Hash:"
    p @hash
  end

  def print_hash_has_key? key
    puts "Hash the key?"
    p @hash.has_key? key
  end

end

hash_example = HashExample.new
hash_example.create_hash
hash_example.add_value
p hash_example.hash
hash_example.print_hash_keys
hash_example.print_hash_values
hash_example.print_hash
hash_example.print_hash_has_key? "a"
