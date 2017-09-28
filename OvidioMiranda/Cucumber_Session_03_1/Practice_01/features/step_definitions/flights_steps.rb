#Start by writing a step definition that works for the first step,
# and then make it more and more generic so that it works with the other steps too.
Given(/\w flight ([A-Z0-9]+) is leaving today$/) do |name_flight|
  puts "The flight #{name_flight} is leaving today"
end