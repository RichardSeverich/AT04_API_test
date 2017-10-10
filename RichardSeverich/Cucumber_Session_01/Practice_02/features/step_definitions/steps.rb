Given(/^I am on the Facebook page$/) do
  puts "I am on facebook"
end

When(/^I set username (.*) and (.*)$/) do |username,password|
  puts "username : #{username}"
  puts "password : #{password}"
end

When(/^click log in button$/) do
  puts "click log in button"
end

Then(/^I should see facebook home page$/) do
  puts "I should see facebook home page"
end

Given(/^I have \$(\d+) in my account$/) do |arg1|
  puts "Step def was running"
end
