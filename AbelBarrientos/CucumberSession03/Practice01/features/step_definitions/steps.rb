Given(/^I am on search page$/) do
  puts "I am on Search Page"
end

When(/^I search the list by client name "([^"]*)"$/) do |username|
  client = Client.instance
  $client_name = client.hash_id_client.select {|k,v| v == username}
end

Then(/^I should get an id "([^"]*)"$/) do |id|
  puts "The client is: #{$client_name.keys[0]}"
  expect($client_name.keys[0].to_s).to eq(id)
end

When(/^I search the list by client id "([^"]*)"$/) do |id|
  client = Client.instance
  $client_id = client.hash_id_client.select {|k,v| k == id}
end

Then(/^I should get a name "([^"]*)"$/) do |username|
  puts "The client is: #{$client_id.values[0]}"
  expect($client_id.values[0].to_s).to eq(username)
end

When(/^I search the list by total price "([^"]*)"$/) do |price|
  client = Client.instance
  $client_name = client.hash_id_price.select {|k,v| v == price}
end
