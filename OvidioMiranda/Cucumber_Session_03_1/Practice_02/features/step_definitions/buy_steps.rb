Given(/^I am in the supermarket$/) do
  puts "I am in the supermarket"
end

#1. Question mark modified for singular and plurar
When(/^I want buy (\d+) apple?/) do |cant|
  puts "Buy: #{cant}"
end

And(/^I go to the cashier$/) do
  puts "I go to the cashier"
end

#2. Multiple captures of data
And(/^I want to pay with (credit card|cash) the total of the purchase which is  (\d+) Bs$/) do |payment_type, total_purchase|
  puts "Payment Type: #{payment_type}"
  puts "Total Purchase: #{total_purchase}"
end
#3. Noncapturing group
Then(/^I can take home (?:an apple|apples)/) do
  puts "I go to home"
end