=begin
Task: Take your previous script (Practice 02) and change calculations for variables.

This script prints the result of common arithmetic operations and the result of logical
expressions using the comparision operators and storing the result values in a variable.
=end

result_one = 6 + 7
result_two = 0 - 10
puts 'The numeric value of six plus seven is %d' % [result_one]
puts 'The numeric value of zero minus ten is %d' % [result_two]

result_three = 10 + 20 - 30 * 40 / 5 % 6
result_four = 100 -500 * 1000 % 5
puts 'The numeric value of 10 + 20 - 30 * 40 / 5 mod 6 is %d' % [result_three]
puts 'The numeric value of 100 -500 * 1000 mod 5 is %d' % [result_four]

logical_one = 10 == 10
logical_two = 10 != 10
logical_three = 4 <= 2
puts 'The result of this logical expression 10 == 10 is %s' % [logical_one]
puts 'The result of this logical expression 10 != 10 is %s' % [logical_two]
puts 'The result of this logical expression 4 <= 2 is %s' % [logical_three]

eql_one = 0.0.eql?(0)
eql_two = 0.0.eql?(0.0)
puts 'Is 0.0 eql to 0? %s' % [eql_one]
puts 'Is 0.0 eql to 0.0? %s' % [eql_two]
