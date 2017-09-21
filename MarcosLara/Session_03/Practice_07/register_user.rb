# Install Gem (For random data generation):
# gem install faker

require 'faker'

class RegisterUser

  def generate_hash(number_of_people)
    @my_hash = Hash.new
    while number_of_people > @my_hash.length
      name = ''
      loop do
        name = Faker::Name.unique.first_name
        break if name.downcase[/^[a-z]{1,8}$/]
      end
      @my_hash[(Faker::Number.unique.between(1, 100)).to_s] = name.downcase
    end
    puts "This is the generated array:\n#{@my_hash}"
  end

  def array_id
    valid = false
    array_result = Array.new
    until valid
      puts 'Enter the one-digit number for search criteria'
      number = gets.chomp
      if number[/^[\d]$/]
        valid = true
        @my_hash.keys.each do |key|
          if key.start_with?(number)
            array_result.push(key)
          end
        end
      else
        puts 'Invalid number'
      end
    end
    array_result
  end

  def array_name
    valid = false
    array_result = Array.new
    until valid
      puts 'Enter the letter for search criteria'
      letter = gets.chomp
      if letter[/^[a-z]$/]
        valid = true
        @my_hash.values.each do |value|
          if value.start_with?(letter)
            array_result.push(value)
          end
        end
      else
        puts 'Invalid letter'
      end
    end
    array_result
  end

  def user_id_group(id)
    if id >= 1 && id <= 25
      puts 'UseID between 1-25 "User belong Group 1"'
    elsif id >= 26 && id <= 50
      puts 'UseID between 26-50 "User belong Group 2"'
    elsif id >= 51 && id <= 75
      puts 'UseID between 51-75 "User belong Group 3"'
    else
      puts 'UseID between 76-100 "User belong Group 4"'
    end
  end

  def print_array(array)
    p array
  end
end

register_user = RegisterUser.new
register_user.generate_hash(100)
register_user.print_array(register_user.array_id)
register_user.print_array(register_user.array_name)
register_user.user_id_group(10)
