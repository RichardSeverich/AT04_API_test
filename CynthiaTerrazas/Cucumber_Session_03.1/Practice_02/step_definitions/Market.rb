Given(/^I am in the market$/) do
  puts "you are in the market"
end

When(/^I buy (\d+) apples?$/) do |num|
  @number=num
  puts "you bougth #{num}"
end

When(/^I paid with "([^"]*)" the mount of (\d+) Bs$/) do |type, mount|
  puts "you paid #{mount} Bs with #{type}"
end

Then(/^I can eat (?:an apple|apples)$/) do
  puts "I can eat an apple an I have #{@number.to_i - 1} apples"
end

