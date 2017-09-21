class Age
  attr_reader :age, :name
  def initialize
    puts 'Insert your name: '
    @name = gets.chomp.to_s
    puts 'Insert your age: '
    @age = gets.chomp.to_f
  end
end