Given(/^I am on the Apple Store homepage$/) do
  puts 'Apple Store homepage'
end

When(/^I fill the search textbox with (.*)$/) do |keyword|
  puts "Fill the search textbox with: #{keyword}"
end

And(/^I click on the search button$/)
  puts "Click on the search button"
end

Then(/^I should get a table with the products names that contain (.*)$/) do |keyword|
  puts "List with #{keyword}"
end