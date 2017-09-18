def test_block
	puts "You are in the method"
	yield
	puts "You are again back to the method"
	yield
end

test_block {puts "You are in the block"}

=begin console output
$ ruby Exercise_blocks.rb
You are in the method
You are in the block
You are again back to the method
You are in the block		                	
=end

value_1 = 10
5.times do | value_1 |
	puts "value_1 inside the block: #{value_1}"
	end
puts "value_1 outside the block: #{value_1}"

=begin console output
value_1 inside the block: 0
value_1 inside the block: 1
value_1 inside the block: 2
value_1 inside the block: 3
value_1 inside the block: 4
value_1 outside the block: 10	                	
=end

value_1 = 10
5.times do | value_2|
	value_1 = value_2
	puts "value_1 inside the block: #{value_1}"
	end
puts "value_1 outside the block: #{value_1}"

=begin console output
value_1 inside the block: 0
value_1 inside the block: 1
value_1 inside the block: 2
value_1 inside the block: 3
value_1 inside the block: 4
value_1 outside the block: 4	                	
=end
