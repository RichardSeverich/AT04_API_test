Given(/^I am on the homepage$/) do
  puts 'Homepage loaded'
end

When(/^I click in the "(Sign in|Registration)" button$/) do |option|
  puts "#{option} button clicked"
end

Then(/^I should get the "(Sign in|Registration)" page$/) do |option|
  puts "#{option} page displayed"
end
