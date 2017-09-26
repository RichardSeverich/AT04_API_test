Given(/^the input "([^"]*)"$/) do |input|
  puts "input"
end

When(/^the calculator is run$/) do
   puts "The calculator is run"
end

Then /^the output should be "([^"]*)"$/ do |expected_output|
   puts "the output should be"
end 