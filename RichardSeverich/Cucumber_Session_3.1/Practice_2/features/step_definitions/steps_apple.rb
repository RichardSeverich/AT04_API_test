Given(/^I am going to eat "([\d+])" apple(?:|s)$/) do |number_apples|
	puts "Number of apples is : #{number_apples}"
	puts "Passed"
end

When(/^I am going to pay with "(money|credit card)"$/) do |type|
    puts "I pay with: #{type}"
    puts "Passed"
end

When(/^I am going to pay "([^"]*)" dolars$/) do |money|
		puts "I pay #{money}"
end

Then(/^I pay for the apple$/) do
	puts "Passed"
end

Then(/^I pay for the apples$/) do
	puts "Passed"
end
