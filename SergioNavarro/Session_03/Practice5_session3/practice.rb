class Practice
  def initialize
   print"Insert the number of user to registrate: "
   number = gets.chomp.to_i
   @@hash1 = Hash.new
   number.times do |index|
     print "insert a name: "
     name = gets.chomp
     print "insert a ID: "
      ids = gets.chomp
      @@hash1.store(name, ids)
   end
  end

  def get_name
    @@hash1.each {|name, id| puts "Name: #{name} and ID: #{id}"}
  end

  def each_hash
    @@array = Array.new
    @@hash1.each_with_index do |(name, id), index|
      name = name.upcase
      puts "The name is: #{name} and the ID is #{id} in the position: #{index + 1}"
      @@array.push name
    end
  end

  def good_bye
    @@array.each {|i| puts "Goodbye #{i}!"}
  end
end

other = Practice.new
other.get_name
other.each_hash
other.good_bye