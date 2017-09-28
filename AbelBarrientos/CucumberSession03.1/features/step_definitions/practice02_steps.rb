Given(/^I buy (\d+) (coffee|apple)s?$/) do |quantity, item|
  @quantity = quantity.to_i
  @item = item
end

When(/^the cost is \$(\d+) for each (coffee|apple)$/) do |price, item|
  @total_price = price.to_i * @quantity
end

Then(/^I should pay \$(\d+) dollars$/) do |total_price|
  expect(@total_price).to be(total_price.to_i)
end
