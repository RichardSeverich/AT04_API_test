=begin
This script shows many different ways to use variables or expressions inside
of a output.
Tasks:
- Create a script where you can print numbers and arithmetic result using comparison operators.
- Take your previous script and change calculations for variables.
- Add some line in the middle of your script that is referring to a variable that does not exist.
Run the file and please explain the error displayed.
--> the error says that an undefined local variable is being used
-

=end
class Printing
  _var1 = 3 + 2 - 1 + 8
  puts"I have #{3 + 2 - 1 + 8 } pencils"
  puts"I have #{_var1} pencils"
  _foods_at_day = 8 - 5
  puts"I usually eat #{8 - 5} times at day"
  puts"I usually eat #{_foods_at_day} times at day"
  _oranges = 3 * 15 / 15 + 11
  puts"I bought #{3 * 5 / 15 + 11} oranges yesterday"
  puts"I bought #{_oranges} oranges yesterday"

  _expression = 23 * 4 + 56
  puts"How is 23 * 4 + 56? #{_expression}"
  puts"How is 23 * 4 + 56? #{23 * 4 + 56}"
  _logical_expression = 3 < 5
  puts"Is 3 < 5? #{3 < 5 ? 'Yes' : 'No'}"
  puts"Is 3 < 5? #{_logical_expression ? 'Yes' : 'No'}"
  _logical_expression_2 = 4 % 2 == 0
  puts"Is 4 an odd number? #{4 % 2 == 0 ? 'Yes' : 'No'}"
  puts"Is 4 an odd number? #{_logical_expression_2 ? 'Yes' : 'No'}"

  # _logical_expression_3 = 4 % 2 == 0
  puts"Is 4 an odd number? #{4 % 2 == 0 ? 'Yes' : 'No'}"
  puts"Is 4 an odd number? #{_logical_expression_3 ? 'Yes' : 'No'}"

  _operation = 12367 - 2 * 431
  puts"If i have 12367 apples and give 2 to 431 students each one, I should have: #{12367 - 2 * 431} apples"
  puts"If i have 12367 apples and give 2 to 431 students each one, I should have: #{_operation} apples"

end