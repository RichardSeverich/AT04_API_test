Given(/^I am in the airport$/) do
 puts "you are in the airport"
end

When(/^the flight ([A-Z0-9]+) is leaving today$/) do |arg1|
  puts "the flight #{arg1 } is leaving today"
end

Then(/^I can board the plane$/) do
  puts "you can board the plane"
end

