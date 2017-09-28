Given(/^I am on the "(\w+)" page$/) do |title|
  puts "#{title} page loaded"
end

When(/^I set the flight ([A-Z\d]+) to leave today$/) do |flight|
  puts "Flight #{flight} will leave today"
end

Then(/^I should get the message "([^"]*)"$/) do |message|
  puts "'#{message}' message displayed"
end
