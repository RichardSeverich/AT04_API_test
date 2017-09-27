Given(/^the user is on Google home page$/) do
  puts 'Google Main Page'
end

Then(/^the user gets a Google search section$/) do
  puts 'Google search section'
end

When(/^the user sets "([^"]*)" in search section$/) do |text_search|
  puts "The user are searching #{text_search}"
end

Then(/^the user gets the result of the search$/) do
  puts 'Result of the search'
end

And(/^the user describes by voice the search$/) do
  puts 'User using the voice to search'
end

Then(/^the user is redirected to Google Doodles Page$/) do
  puts 'Google Doodles page'
end

And(/^the user presses the "([^"]*)" button/) do |option|
  puts "You clicked on #{option}"
end

Then(/^the user is redirected to "([^"]*)" page$/) do |opcion|
  puts "The user are in #{opcion} page"
end

Then(/^the user get the Google Apps options$/) do
  puts 'the User get Google Apps options'
end

When(/^the user gets notifications$/) do
  puts 'The user are getting notifications'
end

Given(/^the user opens the browser$/) do
  puts 'I open the browser'
end

When(/^the user accesses the page of www\.google\.com$/) do
  puts 'I sets www.google.com'
end

Then(/^the user can see the main page of google$/) do
  puts 'I am on the google home page'
end
