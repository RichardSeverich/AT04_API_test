Given(/^User wants to buy (\d+) (?:ticket|tickets)$/) do |number_tickets|
  @number_tickets = number_tickets
end

When(/^User have to pay \$(\d+)$/) do |amount|
  @amount = amount
end

And(/^User will pay with (cash|check)$/) do |type|
  @type = type
end

Then(/^User pay for the (?:tickets|ticket)$/) do
  puts "The user will pay #{@amount} with #{@type} for #{@number_tickets} ticket(s)"
end