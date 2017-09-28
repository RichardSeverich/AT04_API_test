require_relative '../../support/clients.rb'

clients = Clients.new

Given(/^User is in the MainPage$/) do
  puts "I am in the MainPage"
end

When(/^User write a name:User(\d+) with an ID:(\d+) and the Amount:(\d+)$/) do |name, id, amount|
  puts "The name is: #{name} with the ID: #{id} and the total amount is: #{amount}"
end

Then(/^User is showed$/) do
  puts "Showing the user"
end

When(/^User uses the search button with "([^"]*)" to find$/) do |name|
  puts "Finded!" if name.eql('User1')
end

Then(/^Show message of success$/) do
  puts "Success"
end