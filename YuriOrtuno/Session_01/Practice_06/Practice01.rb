def input(number)
  bigger = number.to_f * 100
end

puts "the result is: #{input('10')}."
puts "the result is: #{input('abc10')}."
puts "the result is: #{input('10abc')}."
puts "the result is: #{input('abc10abc')}."
puts "the result is: #{input('abc')}."
