Given(/^A gmail form page$/) do
  puts "register in gmail"
end


When(/^I enter the \$(first|last) name: \$([A-Za-z]*)$/) do |arg1,arg2|

end


And(/^I enter the username (\w+)$/) do |arg|

end

And(/^I enter the \$(password|password confirm_password) (\w+)$/) do |arg1,arg2|

end

# And(/^I enter the birday \$([0-9]{1,2}+[0-9]{1,2}+[0,9]{1,4}])$/) do |arg|
#   puts "This is the the confirm password %s" %arg
# end
And(/^I enter the birday "(0?\d{1,2}[\/|-]0?\d{1,2}[\/|-]\d{2,4})"$/) do |arg|
  puts "This is the the confirm password %s" %arg
end


And(/^I enter the gender \$(Male|Female)$/) do |arg|
  puts arg
end

And(/^I enter the cellphone (\d*)$/) do |arg|
  puts arg
end


And(/^I enter the currentEmail \$([a-z0-9]+[@]+[a-z]+(.com|.com.bo))$/) do |arg|
  pending
end