Given(/^I attend to a class$/) do
  puts 'Attend to a class'
end

When(/^The English trainer assign tasks$/) do |table|
  @assigned_tasks = table.rows_hash
end

And(/^I perform some tasks$/) do |table|
  table.rows_hash.each do |key, value|
    @assigned_tasks[key] = value if @assigned_tasks.has_key?(key)
  end
end

Then(/^the status tasks should be$/) do |table|
  expect(@assigned_tasks == table.rows_hash).to be true
end
