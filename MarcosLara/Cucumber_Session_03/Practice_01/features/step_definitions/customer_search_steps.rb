require_relative '../support/../support/client_registration'
client = ClientRegistration.instance

Given(/^I am on the "(\w+)" page$/) do |title|
  puts "#{title} page loaded"
end

When(/^I set the (\d+), ([a-zA-Z]+) and (\d+) of new client$/) do |id, name, total_price|
  puts "#{id}, #{name} and #{total_price} filled"
  client.clients_id_name.store id, name
  client.clients_id_price.store id, total_price
end

And(/^I click on "([^"]*)" button$/) do |button|
  puts "#{button} button clicked"
end

Then(/^I should get the message "([^"]*)"$/) do |message|
  puts "#{message} message displayed"
end

When(/^I set the (\d+) in the search box$/) do |id|
  puts "#{id} filled in search box"
  @id = id
end

Then(/^I should get the search result with ([a-zA-Z]+) and (\d+)$/) do |name, total_price|
  expect(client.clients_id_name[@id]).to eq(name)
  expect(client.clients_id_price[@id]).to eq(total_price)
end

Then(/^I should get a search result$/) do
  expect(client.clients_id_name.has_key?(@id)).to be true
  expect(client.clients_id_price.has_key?(@id)).to be true
end
