=begin
Create a class with :
method to create the hash, the method should ask for the length of the hash
	According the length defined should ask to the user for the key and for 	the value.
 Use a getter to obtain the hash created in the method
Method to print the hash key
 Method to print the hash values
Method to print the hash
Method to define is a key inserted by the user, exists on the hash.
Method to define is a value inserted by the user, exists on the hash.
Instance the class and call to the method to create the hash
Using the returned hash,  call to the other methods with this argument.
=end
class Hashes

  def created
    puts "please enter a number"
    tam= gets.chomp.to_i

    @user=Hash.new
    tam.times do |value|
      puts "please enter a key"
      a=gets.chomp.to_i
      puts "please enter a name"
      b=gets.chomp.to_s

      @user.store(a,b)
    end
    return @user
  end


  def print_keys
     p @user.keys
  end


  def print_values
    p @user.values
  end


  def print_hash
    p @user
  end

  def exists_key?
    puts "please enter the key"
    k=gets.chomp.to_i
    puts @user.has_key?(k)
  end

  def exists_value?
    puts "please enter the value"
    v=gets.chomp
    puts @user.has_value?(v)
  end
end

hashes=Hashes.new
hashes.created
hashes.print_keys
hashes.print_values
hashes.print_hash
hashes.exists_key?
hashes.exists_value?