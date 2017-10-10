Given(/^I have a ZipCode as "([\d]*)"$/) do |zipCode|
  puts "Data: #{zipCode}"
end

Given(/^I have a Username like "([a-z]*)"$/) do |username|
  puts "Data: #{username}"
end

Given(/^I have a country as "([a-zA-Z]*)"$/) do |country|
  puts "Data: #{country}"
end

Then(/^i could fill the form$/) do
  puts "Form"
end