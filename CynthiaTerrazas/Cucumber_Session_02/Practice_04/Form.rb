Given(/^User is on Home Page$/) do
  puts "you are on Home Page"
end

When(/^I fill ZipCode field with "(\d*)"$/) do |zipcode|
puts "your zipcode is #{zipcode}"
end

When(/^I fill Username field with "([a-z]*)"$/) do |username|
  puts "your Username is #{username}"
end

When(/^I fill Country field with "(\D*)"$/) do |country|
  puts "your Country is #{country}"
end

When(/^I click on save button$/) do
  puts "you did click on save button"
end

Then(/^Message displayed saved Successfully$/) do
  puts "Saved Successfully"
end