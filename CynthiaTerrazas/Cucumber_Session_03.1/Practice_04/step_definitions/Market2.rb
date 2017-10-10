Given(/^I worked a month$/) do
  puts "You worked during one month"
end

When(/^I receive my salary$/) do
  puts "You receive your salary"
end

Then(/^I have money$/) do
  puts "You have money"
end

Given(/^I am in the market$/) do
 puts "you are in the market"
end

When(/^I buy (\d+) clothes?$/) do |arg1|
  puts "you bougth #{arg1} clothes"
end

When(/^I paid with "([^"]*)" the mount of (\d+) Bs$/) do |type, mount|
  puts "you paid #{mount} Bs with #{type}"
end

Then(/^I have new clothes$/) do
  puts "you have new clothes"
end

Given(/^I am in the market with this list:$/) do |table|
  @board = table.raw
end

When(/^I buy (\d+) Kg of (\w+) in the (\d+) position of the list$/) do |mount, product, pos|
  row, col = pos.to_i, 1
  @board[row][col] = product
  row, col = pos.to_i, 2
  @board[row][col] = mount
end

Then(/^I have this products:$/) do |expected_table|
  expected_table.diff!(@board)
end


