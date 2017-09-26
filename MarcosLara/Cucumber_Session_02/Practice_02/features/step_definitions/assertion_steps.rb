Then(/^I should get a page with search results that contains (.*)$/) do |keyword|
  puts "Results page that contains #{keyword}"
end

Then(/^I should get the "([^"]*)" home page$/) do |name|
  puts "#{name} home page loaded"
end
