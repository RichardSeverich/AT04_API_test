Given(/^I am on Spotify home page$/) do
  puts 'Go to url https://open.spotify.com/browse'
end

When(/^I select "(Sign up|Log in)"$/) do |option|
  puts 'Select option'
  puts option
end

Then(/^redirects to the page for Log in$/) do
  puts 'Go to url https://accounts.spotify.com/en/login'
end

Then(/^redirects to the page for Sign up$/) do
  puts 'Go to url https://www.spotify.com/es/signup'
end