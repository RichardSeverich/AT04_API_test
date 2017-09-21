class Register
  def initialize
    @name = Array.new
    @id = Array.new
  end
  def register
    puts 'How many users are you going to register'
    @number = gets.chomp.to_i
    @number_aux = @number
    @number.times do |index|
      puts 'Introduce the name'
      _name = gets.chomp.to_s
      @name.push(_name)
      puts 'Introduce his/her ID'
      _id = gets.chomp.to_i
      @id.push(_id)
    end
    end
    def upper_case
      @upper = Array.new
      @upper = @name.map {|x| x.upcase }
    end
    def printing
      _i = 0
      while @number > 0
        puts "The person #{@name[_i]} is in the position #{_i}"
        _i += 1
        @number -= 1
      end
    end
    def print_array
      puts "The array in upper case is: #{@upper} "
    end
    def say_goodbye
      _i = 0
      while @number_aux > 0
        puts "Goodbye #{@name[_i]}"
        _i += 1
        @number_aux -= 1
      end
    end
end
r = Register.new
r.register
r.upper_case
r.printing
r.print_array
r.say_goodbye