Given(/^Is a new day$/) do
  puts " New day has Started"
end

When(/^Student has a list of task$/) do |list|
  # table is a table.hashes.keys # => [:English, :Frech, :Spanish]
  @list = list.raw
end

Then(/^The Student start to work$/) do
  puts @list
end

Given(/^The list os task$/) do
  puts "Lets work"
end

When(/^The student finish (task1|task2) of (English|Frech|Spanish)$/) do |task, subject|
  @list[task][subject] = 'o'
end

Then(/^The student should has the next table$/) do |expected_table|
  # table is a table.hashes.keys # => [:English, :Frech, :Spanish]
  expected_table.diff!(@list)
end