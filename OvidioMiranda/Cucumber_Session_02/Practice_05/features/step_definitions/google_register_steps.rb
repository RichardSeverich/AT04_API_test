Given(/^I am in the  Gmail Account page$/) do
  puts 'Show page to create Gmail account'
end

And(/^I fill in the firt name field with ([a-zA-Z]*)$/) do |first_name|
  puts "First Name: #{first_name}"
end

And(/^I fill in the last name field with ([a-zA-Z]*)$/) do |last_name|
  puts "Last Name: #{last_name}"
end

And(/^I fill in the user name field with ([a-zA-Z0-9_]*)$/) do |user_name|
  puts "User Name: #{user_name}"
end

And(/^I fill in the password field with ((?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[^\w\s]).{8,})$/) do |password|
  puts "Password: #{password}"
end

And(/^I fill in the confirm password field with((?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[^\w\s]).{8,})$/) do |confirm_password|
  puts "Confrim Password:#{confirm_password}"
end

And(/^I fill in the fields for the date of birth with Mouth:(January|February|March|April|May|June|July|August|September|October|November|December) Day: ([1-9]|[12]\d|3[01]) Year: (199\d|200\d|2099)$/) do |mouth, day, year|
  puts "Mouth: #{mouth}"
  puts "Day: #{day}"
  puts "Year: #{year}"
end

And(/^I fill in the gender field with (Female|Male|Other|Rather not say)$/) do |gender|
  puts "Gender: #{gender}"
end

And(/^I fill in the mobile phone field with (\d*)$/) do |mobile_phone|
  puts "Mobile Phone: #{mobile_phone}"
end

And(/^I fill in the email address field with ([a-z0-9._]+@[a-z0-9.]+\.[a-z]{2,3})$/) do |email_address|
  puts "Email Addres: #{email_address}"
end

And(/^I click on save button of the form$/) do
  puts "Click on Save button"
end

Then(/^I should show the message "([^"]*)"$/) do |message|
  puts message
end