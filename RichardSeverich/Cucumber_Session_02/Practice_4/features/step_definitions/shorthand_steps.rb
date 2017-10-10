When(/^User sets "([\d+]*)" ZipCode$/) do |zipcode|
  @var = zipcode
  puts "Zip Code is : #{zipcode}"
end

Given(/^User sets "([a-z]*)" Username$/) do |username|
   @var = username
   puts "Username is : #{username}"
end

#everything is accepted except numbers
When(/^User sets "([\D+]*)" Country$/) do |country|
   @var = country
   puts "Country is : #{country}"
end

Then(/^verify "([^"]*)"$/) do |arg1|
 	expect(@var).to eql(arg1)
end
