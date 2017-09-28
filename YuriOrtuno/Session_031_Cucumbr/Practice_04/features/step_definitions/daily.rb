Given(/^I have breakfast$/) do

end

And(/^I ready to go to jalasfot$/) do
  puts "I ready to go to jalasfot"
end

Then(/^I get out$/) do
  puts "I get out"
end

Given(/^I ago to jalasoft$/) do
  puts "I ago to jalasoft"
end

And(/^I asist all class$/) do
  puts "I asist all class"
end

And(/^I play \$(soccer|volleyball)$/) do |play|
  puts play
end

When(/^take my$/) do |table|
  # table is a table.hashes.keys # => [:socks]
  @table = table.raw
end

Then(/^in my backpack i should have$/) do |table|
  # table is a table.hashes.keys # => [:socks]
  table.diff!(@table)
end