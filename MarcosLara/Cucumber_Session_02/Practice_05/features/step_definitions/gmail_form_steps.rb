Given(/^I am on the registration homepage$/) do
  puts 'Registration page loaded'
end

# Special names considered (E.g: D'Arcy)
When(/^I fill the name field with ([a-zA-Z']+)$/) do |name|
  puts "Name field filled with #{name}"
end

# Special last names considered (E.g: O'Calloway-Jhonson)
And(/^I fill the last name field with ([a-zA-Z ,.'-]+)$/) do |last_name|
  puts "Last name field filled with #{last_name}"
end

And(/^I fill the username field with ([a-zA-z._\-\d]+)$/) do |username|
  puts "Username field filled with #{username}"
end

# Minimum eight characters, at least one letter, one number and one special character.
And(/^I fill the password field with ((?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,})$/) do |pass|
  puts "Password field filled with #{pass}"
end

# Minimum eight characters, at least one letter, one number and one special character.
And(/^I fill the confirm password with ((?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,})$/) do |pass|
  puts "Confirm Password field filled with #{pass}"
end

And(/^I select (January|February|March|April|May|June|July|August|September|October|November|December) in Month drop down box$/) do |month|
  puts "Select #{month} in month drop down list"
end

# From 1 to 31
And(/^I fill the day field with ([1-9]|[12][0-9]|3[01])$/) do |day|
  puts "Day field filled with #{day}"
end

And(/^I fill the year field with (\d{4})$/) do |year|
  puts "Year field filled with #{year}"
end

And(/^I select (Male|Female) the Gender drop down box$/) do |gender|
  puts "Select #{gender} in gender drop down list"
end

# Special numbers supported (E.g: 789-987)
And(/^I fill the Mobile Phone field with (\d*)$/) do |phone|
  puts "Mobile Phone field filled with #{phone}"
end

And(/^I fill the Current email address field with ([a-zA-Z0-9._-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]{1,3}))*$/) do |current|
  puts "Current email field filled with #{current}"
end

And(/^I click in "([^"]*)" button$/) do |button|
  puts "#{button} button clicked"
end

Then(/^I should get the message "([^"]*)"$/) do |message|
  puts "#{message} message displayed"
end
