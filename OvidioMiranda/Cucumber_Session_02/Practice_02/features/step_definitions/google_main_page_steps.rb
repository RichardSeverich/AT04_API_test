Given(/^I am on the Google search main page$/) do
  puts "Go to url www.google.com"
end

When(/^I write the word(.*) in the search text field$/) do |word|
  puts "The word is written #{word}"
end

When(/^I click on Google Search button$/) do
  puts 'Click on the search button'
end

Then(/^The results of the search word should be displayed$/) do
  puts 'It shows a new page with the results'
end

When(/^I click on I'm Felling Lucky button$/) do
  puts 'Click on the Im Felling Lucky button'
end

Then(/^I am redirected to Google Doodles Page$/) do
  puts 'show page https://www.google.com/doodles/'
end

When(/^I click on gmail hyperlink$/) do
  puts 'Click on gmail hyperlink'
end

Then(/^I am redirected to Google Gmail Page$/) do
  puts 'show page https://www.google.com/gmail/about/#'
end

When(/^I click on Images hyperlink$/) do
  puts 'Click on  Images hyperlink'
end

Then(/^I am redirected to the page for Google Images Search$/) do
  puts 'show page https://www.google.com/imghp?hl=en&tab=wi'
end

When(/^I click on Sign in button$/) do
  puts 'Click on Sign in button'
end

Then(/^I am redirected to the page for Sign in$/) do
  puts 'show page https://accounts.google.com/signin/v2'
end

When(/^I click on Google Apps button$/) do
  puts 'Click on Google Apps button'
end

Then(/^Show various Google apps$/) do
  puts 'Show various Google apps'
end