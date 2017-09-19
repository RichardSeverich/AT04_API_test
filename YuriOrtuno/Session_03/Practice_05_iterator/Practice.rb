class Practices

  def initialize persons_register
    @@persons_register = persons_register
  end

  def input_values
    register = Hash.new
    @@persons_register.times do
      puts "input name and id"
      register.store(gets.chomp, gets.chomp.to_i)
    end
    register
  end

  def change_uper_case register = Hash.new
    register.each do |value|
      puts value.to_s.upcase
    end
  end

  def print_name_index register = Hash.new
    register.each_with_index do |(key, value), index|
      puts "index is #{index}, key is #{key} and value is #{value}"
    end
  end


  def good_bye register = Hash.new
    register.each{|key,value| puts "Good bye #{key}"}
  end

end

puts "input number persons register"
practice = Practices.new gets.chomp.to_i
register = practice.input_values
p register
practice.change_uper_case register
practice.print_name_index register
practice.good_bye register




