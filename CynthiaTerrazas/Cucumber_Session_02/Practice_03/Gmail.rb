#
# Given(/^I am on the Gmail page$/) do
#   puts "I am on the Gmail page"
# end
#
# When(/^I click on For work option$/) do
#   puts "I select for work option"
# end
#
# When(/^I click on "( Start using|Start )" option$/) do
#   puts "Send to the Welcome page"
# end
#
# Then(/^I should be on Welcome Gmail home page$/) do
#   puts "I am on the Welcome page"
# end

Given(/^I am on the Gmail page$/) do
  puts "I am on the Gmail page"
end

When(/^I click on For work option$/) do
  puts "I select for work option"
end

When(/^I click on (Start using|Start) option$/) do
  puts "Send to the Welcome page"
end

Then(/^I should be on Welcome Gmail home page$/) do
  puts "I am on the Welcome page"
end