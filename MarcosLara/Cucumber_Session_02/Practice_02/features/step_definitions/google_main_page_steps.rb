Given(/^I am in the Google main page$/) do
  puts 'Google main page loaded'
end

Given(/^I fill the search box with (.*)$/) do |keyword|
  puts "Search box filled with #{keyword}"
end

And(/^I click on "([^"]*)" button$/) do |button|
  puts "#{button} button clicked"
end

And(/^I click on "([^"]*)" icon button$/) do |button|
  puts "#{button} icon button clicked"
end

Given(/^I click on "([^"]*)" text link$/) do |text|
  puts "#{text} text link clicked"
end
