Given(/^I eat \$(\d*) apples?$/) do |arg|
end

Given(/^I drink juice of \$(banana|pineapple) with \$(milk|water) and \$(\d*) \$(cookies|pie)$/) do |arg1, arg2, arg3, arg4|
  puts arg1
  puts arg2
  puts arg3
  puts arg4
end

Given(/^I (?:visit|go to) the homepage$/) do
  pending
end