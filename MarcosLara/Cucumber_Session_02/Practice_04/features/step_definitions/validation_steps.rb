Given(/^I am on the registration homepage$/) do
  puts 'Registration homepage loaded'
end

When(/^I fill the username field with ([a-z]*)$/) do |username|
  puts "Username field filled with #{username}"
end

And(/^I fill the country field with ([\D]*)$/) do |country|
  puts "Country field filled with #{country}"
end

And(/^I fill the zip code field with ([\d]*)$/) do |zip_code|
  puts "Zip Code file filled with #{zip_code}"
end

And(/^I click on "([^"]*)" button$/) do |button|
  puts "#{button} button clicked"
end

Then(/^I should get the message "([^"]*)"$/) do |message|
  puts "'#{message}' message displayed"
end
