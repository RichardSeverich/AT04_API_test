#Step with alternation
Given(/^I select \(Sign In|Create Account|Sign out\)$/) do
  puts 'You selected a main option'
end

Then(/^verify$/) do
  puts 'Scenario passed'
end
#Step without alternation
Given(/^I select \(One Option\)$/) do
  puts "Options"
end
