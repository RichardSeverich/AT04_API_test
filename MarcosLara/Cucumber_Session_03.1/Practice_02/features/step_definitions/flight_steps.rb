Given(/^I am on the "(\w+)" page$/) do |title|
  puts "#{title} page loaded"
end

When(/^I set the quantity to "(\d+)" passages?$/) do |number|
  puts "Number of passages(s) #{number}"
end

And(/^I set the payment method to "([^"]*)" and code to "(\d+)"$/) do |method, code|
  puts "Payment method: #{method}. Code: #{code}"
end

And(/^I click on "([^"]*)" button$/) do |button|
  puts "#{button} button clicked"
end

Then(/^I should get a confirmation message for (?:the|every) passage$/) do
  puts 'Confirmation message displayed'
end
