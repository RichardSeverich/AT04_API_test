class NewHash

  def create_hash
    size = gets.chomp.to_i
    newhash = Hash.new
    size.times do
      puts "insert key and value"
      newhash.store(gets.chomp, gets.chomp)
    end
    newhash
  end

  def print_hash_key newhash = Hash.new
    p newhash.keys
  end

  def printf_hash_values newhash = Hash.new
    p newhash.values
  end

  def printf_hash newhash = Hash.new
    p newhash
  end

  def printf_hash_key_exits newhash = Hash.new, key
    p newhash.key?(key)
  end

  def printf_hash_value_exits newhash = Hash.new, value
    p newhash.value?(value)
  end
end

hash = NewHash.new
newhash = hash.create_hash
hash.print_hash_key newhash
hash.printf_hash_values newhash
hash.printf_hash newhash
hash.printf_hash_key_exits newhash, "yury"
hash.printf_hash_value_exits newhash, "20"

