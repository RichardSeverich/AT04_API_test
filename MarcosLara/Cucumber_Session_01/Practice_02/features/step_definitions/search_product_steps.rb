Given(/^I am on the Apple Store homepage$/) do
  puts 'Apple Store homepage'
end

When(/^I fill the search box with (.*)$/) do |keyword|
  puts "Fill the search box with: #{keyword}"
end

And(/^I click on the search button$/) do
  puts 'Click on search button'
end

Then(/^I should get a table with the products names that contain (.*)$/) do |keyword|
  puts "List with #{keyword}"
end


