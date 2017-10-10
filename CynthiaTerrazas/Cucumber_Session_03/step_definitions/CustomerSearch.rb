Given(/^I am in the customer search page$/) do
  puts "you are on the customer search page"
end

When(/^I fill the Name customer with "([^"]*)"$/) do |name|
  @name_customer=name
end

When(/^I fill the ID Customer with ([^"]*)$/) do |id|
  @id_customer=id
end

When(/^I fill the Total priced with ([^"]*)$/) do |priced|
  @total_price=priced
end

Then(/^The result of the search is correct$/) do
  customer = Customer.instance
   expect(customer.method_search_name_client(@name_customer.to_s)).to be true
   expect(customer.method_id(@id_customer.to_i)).to be true
   expect(customer.method_priced(@id_customer.to_i)).to eq(@total_price.to_i)

end


