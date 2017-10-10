Given(/^User is on the Google registration form page$/) do
  puts "Your are on the Google registration form page"
end

When(/^User sets first name as "([a-zA-Z]*)"$/) do |firstName|
  puts "Your first name is: #{firstName} "
end

When(/^User sets Last name as "([a-zA-Z]*)"$/) do |lastName|
  puts "Your last name is: #{lastName} "
end
  
When(/^User sets Username as "([a-zA-Z.]*)"$/) do |username|
  puts "Your User name is: #{username} "
end

When(/^User sets Password as "((?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{8,16})"$/) do |password|
   puts "Your Password is: #{password} "
end

When(/^User sets Month as "(January|February|March|April|May|June|July|August|September|Octobe|November|December)"$/) do |month|
  @month = month
end

When(/^User sets Days as "([^"]*)"$/) do |day|
  @day = day
end

When(/^User sets Year as "([\d+]*)"$/) do |year|
  puts "Your birthday is: #{@month}/#{@day}/#{year}"
end

When(/^User sets Gender as "(Male|Female)"$/) do |gender|
  puts "Your gender is: #{gender}"
end

When(/^User sets Phone as "([\d+]*)"$/) do |phone|
  puts "Your phone number is : #{phone}"
end

When(/^User sets Email as "([a-zA-Z0-9._-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]{1,3}))*"$/) do |email|
  puts "Your current email address is: #{email}"
end

Then(/^verify$/) do
 puts "Passed"
end
