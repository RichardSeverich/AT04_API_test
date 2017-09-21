=begin
 Session 3 - Practice 4
Create a class with :
1 method to create the hash, the method should ask for the length of the hash
	According the length defined should ask to the user for the key and for 	the value.
   1 Use a getter to obtain the hash created in the method
2 Method to print the hash key
3 Method to print the hash values
4 Method to print the hash
5 Method to define is a key inserted by the user, exists on the hash.
6 Method to define is a value inserted by the user, exists on the hash.
7 Instance the class and call to the method to create the hash
Using the returned hash,  call to the other methods with this argument.


=end

class PracticeFour
  attr_reader :userHash

  def create_the_hash
    @userHash = Hash.new
    print "Insert the number of elements you want for your hash: "
    numberElements = gets.chomp.to_i
    numberElements.times do |id|
      puts "Element #{id+1}: "
      print 'Enter the key: '
      key = gets.chomp
      print 'Enter the value: '
      value = gets.chomp
      @userHash.store(key, value)
    end
  end

  def print_hash_keys(hash)
    puts 'Key elements.'
    p hash.keys
  end

  def print_hash_values(hash)
    puts "Value elements."
    p (hash).values
  end

  def print_hash(hash)
    puts "Hash."
    p hash
  end

  def exist_key(hash)
    print "Insert the KEY to search:"
    key=gets.chomp
    puts hash.key?(key) ? "The key #{key} exist!" : 'Key not found'
  end

  def exist_value(hash)
    print "Insert the VALUE to search:"
    value=gets.chomp
    puts hash.value?(value) ? "The value #{value} exist!" : 'Value not found'
  end

end

practice = PracticeFour.new
practice.create_the_hash
#Use a getter to obtain the hash created in the method
new_hash=practice.userHash
#Using the returned hash,  call to the other methods with this argument
practice.print_hash_keys(new_hash)
practice.print_hash_values(new_hash)
practice.print_hash(new_hash)
practice.exist_key(new_hash)
practice.exist_value(new_hash)

