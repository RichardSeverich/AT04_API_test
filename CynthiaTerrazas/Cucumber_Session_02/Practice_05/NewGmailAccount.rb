
Given(/^I am in the Gmail Account page$/) do
  puts " You are on the Gmail Account page "
end

Given(/^I fill the name with ([A-Za-z]*)$/) do |name|
  puts " Your name is #{name} "
end

Given(/^I fill Last name field with ([A-Za-z]*)$/) do |lastname |
  puts " Your Last name  is #{lastname }"
end

Given(/^I fill the username with ([A-Za-z0-9_]*)$/) do |username|
  puts " Your username  is #{username }"
end

Given(/^I fill the password with (.*)$/) do |password|
  puts " Your password  is #{password }"
end

Given(/^I fill the confirm password with (.*)$/) do |confirmpassword|
  puts " Your confirm password  is #{confirmpassword }"
end

Given(/^I fill the birthday month with (January|February|March|April|May|June|July|August|September|October|November|December)$/) do |month|
  puts " Your birthday month  is #{month }"
end

Given(/^I fill the birthday day with (0[1-9]|[1-2][0-9]|3[0-1])$/) do |day|
  puts " Your birthday day   is #{day }"
end

Given(/^I fill the birthday year with ([0-9]{0,4})$/) do |year|
  puts " Your birthday year  is #{year}"
end

Given(/^I fill the Gender with (Female|Male|Other|Rather not say)$/) do |gender|
  puts " Your Gender  is #{gender }"
end

Given(/^I fill the Mobile phone with (\d+)$/) do |phone|
  puts " Your Mobile phone is #{phone }"
end

Given(/^I fill the Email adress with ([a-z0-9._]+@[a-z0-9.]+\.[a-z]{2,3})$/) do |adress|
  puts " Your Email adress is #{adress }"
end

Given(/^I click on Next step button$/) do
  puts " Your didclick on Next step button"
end

Then(/^Message displayed is the account was created successful$/) do
  puts "The account was created successful"
end