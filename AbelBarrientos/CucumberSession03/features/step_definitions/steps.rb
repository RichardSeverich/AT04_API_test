Given(/^I have \$(\d+) in my account$/) do |balance|
  @balance = balance
end

When(/^I choose to withdraw the fixed amount of \$(\d+)$/) do |withdraw|
  @money = withdraw
end

Then(/^I should receive \$(\d+) cash$/) do |cash|
  puts "this is your $#{cash}"
end

Then(/^the balance of my account should be \$(\d+)$/) do |remaining|
  @remaining_calculated = (@balance.to_i - @money.to_i).to_s
  expect(@remaining_calculated).to eql(remaining)
end


When(/^I behave unscrupulously$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should receive an email containing:$/) do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^my account should be locked$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
