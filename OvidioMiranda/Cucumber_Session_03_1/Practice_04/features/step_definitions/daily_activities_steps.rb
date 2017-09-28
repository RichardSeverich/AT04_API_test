Given(/^I wake up at "([^"]*)" a.m$/) do |time|
  puts "I wake up at #{time}a.m"
end

When(/^I take a shower$/) do
  puts "I take a shower"
end

And(/^I dress$/) do
  puts "I take a shower"
end

When(/^I checked food available$/) do
  puts "I checked food available"
end

And(/^I prepare my breakfast$/) do
  puts "I prepare my breakfast"
end

And(/^I eat my breakfast$/) do
  puts "I eat my breakfast"
end

Then(/^I leave home$/) do
  puts "I leave home"
end

When(/^I leave my house at "([^"]*)" a\.m$/) do |time|
  puts "I leave my house at #{time}a.m"
end

And(/^I drive my motorcycle to go to the foundation$/) do
  puts "I drive my motorcycle to go to the foundation"
end

And(/^I arrive to the foundation, I have to do the following tasks:$/) do |table|
  puts "I arrive to the foundation, I have to do the following tasks"
  @list_of_task = table.raw
end

And(/^I add the task number (\d+) with name "([^"]*)"$/) do |number, task|
  puts "Number task: #{number}"
  puts "Task:#{task}"
  @list_of_task[number.to_i][1] = task
end

And(/^at night I have to write my Daily Report$/) do
  puts "at night I have to write my Daily Report"
end

Then(/^My list of tasks should look like this:$/) do |expected_table|
  expected_table.diff!(@list_of_task)
end