Given(/^I fill in the zip code field with (\d*)$/) do |number|
  puts "Only Number #{number}"
end

And(/^I fill in the user name field with "([a-z]+)"$/) do |user_name|
  puts "User Name: #{user_name}"
end

And(/^I selected as country(\D+)/) do |country|
  puts "Country: #{country}"
end

And(/^I click on save button$/) do
  puts "Click on Save"
end

Then(/^message is displayed stating that the account was saved successfully$/) do
  puts "Show Message"
end