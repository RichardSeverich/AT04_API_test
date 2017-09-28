Given(/^User is on the new account form$/) do
  puts "Form page"
end

When(/^User write his name as "([a-zA-Z]*)"$/) do |name|
  puts "#{name} as a User Name"
end

When(/^User write his last name as "([a-zA-Z]*)"$/) do |last|
  puts "#{last} is the Las Name of User"
end

Then(/^no message of error shows$/) do
  puts "No message shows"
end

When(/^User write a username has a "([a-z.]*)"$/) do |username|
  puts "user name is #{username}"
end

Then(/^no message of user already taken shows$/) do
  puts "No message shows"
end

When(/^User write a password has a "([A-Za-z0-9.]*)"$/) do |password|
  puts "The password is #{password}"
end

Then(/^No message of low security password shows$/) do
  puts "No message shows"
end

Given(/^User is on new Account form$/) do
  puts "Form page"
end

When(/^User select Month, Day and Year as "([A-Za-z]*)", "([1-9]{2})", "([1-9]{4})"$/) do |arg1, arg2, arg3|
  puts "something #{arg1}, #{arg2}, #{arg3}"
end

Then(/^No message of error of the date shows$/) do
  puts "No message shows"
end

When(/^User select an option "(Male|Female)"$/) do |gender|
  puts "Gender #{gender}, selected"
end

Then(/^Gender es showed in the option\.$/) do
  puts "No message shows"
end

When(/^User write a Mobile Phone as "([1-9]{8})"$/) do |number|
  puts "Phone number is #{number}"
end

When(/^User write an Email as "([a-zA-Z0-9._-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]{1,3}))"$/) do |number|
  puts "Phone number is #{number}"
end