When(/^I fill in the customer id field with (\d+)$/) do |id|
  @id = id
end

And(/^I fill in the name customer field with ([a-zA-Z]+)$/) do |name|
  @name = name
end

And(/^I fill in the total price field with (\d+)$/) do |total_price|
  @total_price = total_price
end
And(/^I click on Search button$/) do
  puts "Click on Search"
end

Then(/^I should display the message "([^"]*)"$/) do |result_expected|
  customer = Customer.instance
  puts result_actual = customer.search_customer(@id, @name, @total_price)
  expect(result_actual).to eq(result_expected)
end