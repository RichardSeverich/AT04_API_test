class Block
  def block
    puts 'You are in the method'
    yield
    puts 'You are back again'
    yield
  end

  value_1 = 10
  5.times do |value_2|
    puts "value_1 inside the block:#{value_1}"
    value_1 = value_2
    puts "value 1 outside the block: #{value_1}"
  end
  puts "value_1 outside the block: #{value_1}"
end
