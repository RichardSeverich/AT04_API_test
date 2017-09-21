=begin
Create a class with:
  - The amount of persons to register
  - One method to get the Name and ID for all the persons registered
  - One method that consider:
    - for each one of the Names, change them to upper case
    - print the position and the Name of each person registered
    - Save the name in upper case into an array, return the array
  - One method that According the amount of persons registered say “good bye <name>”
    to each one until all persons are gone.

=end
class PersonsId

  def create_hash
    puts 'Enter the amount of persons'
    amount = gets.to_i
    @my_hash = Hash.new
    amount.times do
      puts 'Enter name'
      key = gets.chomp
      puts 'Enter ID'
      value = gets.to_i
      @my_hash.store key, value
    end
  end

  def print_all_persons
    puts 'All persons registered:'
    @my_hash.each do |key, value|
      puts "Person name: #{key}. ID: #{value}"
    end
  end

  def print_names_uppercase
    names = Array.new
    @my_hash.each_with_index do |(key, value), i|
      puts "Position #{i}: #{key.upcase}"
      names.push(key.upcase)
    end
    names
  end

  def print_goodbye
    @my_hash.each do |key, value|
      puts "Good bye #{value}"
    end
  end
end

persons_id = PersonsId.new
persons_id.create_hash
persons_id.print_all_persons
persons_id.print_names_uppercase
persons_id.print_goodbye
