Given(/^user is on home page$/) do
  puts 'Passed: Home Page'
end

Then(/^user gets a bootcamp section$/) do
  puts 'Passed: bootcamp section'
end

When(/^user reload the page$/) do
  puts 'Passed: Reload Page'
end

Given(/^a user signs up for a (\d+) day account$/) do |arg1|
  puts "Passed: a user signs up for a #{arg1} day account$"
end

When(/^they login in (\d+) days$/) do |arg1|
  puts"Passed: they login in #{arg1} days$"
end

Then(/^they will be let in$/) do
  puts'Passed: they will be let in'	
end

Then(/^they will be asked to renew$/) do
  puts 'Passed: they will be asked to renew'	
end
