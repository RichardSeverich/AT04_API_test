require_relative '../support/client_singleton.rb'
myClient = Client.instance

Given(/^user is on Registration Page$/) do
  puts 'I am on the Registration Page'
end

Given(/^user is on Search Page$/) do
  puts 'Clients registered'
end

When(/^user sets (.*), (\d+) and (\d+)$/) do |name, id, total_price|
  myClient.hash_clients_names.store id, name
  myClient.hash_clients_price.store id, total_price
end

Then(/^clients are registered$/) do
 puts "Cliente are registered"
end


When(/^user search client by (\d+)$/) do |id|
 @cliente_name = ""
 myClient.hash_clients_names.each do |(key, value)|
 	if(key==id)
 		@cliente_name = value
 	end

 end
 @cliente_total_price = ""
 myClient.hash_clients_price.each do |(key, value)|
  	if(key==id)
 		@cliente_total_price = value
 	end
  end
end

Then(/^user finds client registered as (.*) and (\d+)$/) do |name, total_price|
  expect(@cliente_name).to eql(name)
  expect(@cliente_total_price).to eql(total_price)
end

When(/^user search client registered$/) do
  puts "Search clientes"
end

Then(/^user finds client$/) do
  puts "User find client"
end
