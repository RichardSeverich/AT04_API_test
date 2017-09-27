Given(/^Insert the ZipCode (\d*)$/) do |arg|
  puts "only digist"
end

When(/^Insert the Username (\w+)$/) do
  puts "only lower case"
end

And(/^I set country to (\D+)$/) do
  puts "any character except digits"
end