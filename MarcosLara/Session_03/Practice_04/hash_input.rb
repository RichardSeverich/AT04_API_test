=begin
Create a class with :
  - Method to create the hash, the method should ask for the length of the hash
	  According the length defined should ask to the user for the key and for 	the value.
    Use a getter to obtain the hash created in the method
  - Method to print the hash key
  - Method to print the hash values
  - Method to print the hash
  - Method to define is a key inserted by the user, exists on the hash.
  - Method to define is a value inserted by the user, exists on the hash.
  - Instance the class and call to the method to create the hash
=end

class HashInput

  def create_hash
    puts 'Enter hash size'
    size = gets.to_i
    @my_hash = Hash.new
    size.times do
      puts 'Enter key'
      key = gets.chomp
      puts 'Enter value'
      value = gets.chomp
      @my_hash.store key, value
    end
    puts 'finish'
  end

  def print_hash
    p @my_hash
  end

  def print_values
    p @my_hash.keys
  end

  def print_keys
    p @my_hash.values
  end

  def verify_key
    puts 'Verify key'
    key = gets.chomp
    puts @my_hash.has_key?(key)? "Yes, contains #{key}" : "No, no contains #{key}"
  end

  def verify_value
    puts 'Verify value:'
    value = gets.chomp
    puts @my_hash.has_value?(value)? "Yes, contains #{value}" : "No, no contains #{value}"
  end
end

hash_test = HashInput.new
hash_test.create_hash
hash_test.print_hash
hash_test.print_keys
hash_test.print_values
hash_test.verify_key
hash_test.verify_value
