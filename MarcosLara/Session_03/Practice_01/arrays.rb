=begin
Create 1 method that is going to return an array
Create 1 method that is going to print the first element of an array received as argument
Create 1 method that is going to print the last element of an array received as argument
Create 1 method that is going to receive two different arrays , and will print the common elements between both arrays
=end

def return_array
  [1, 'two', true, 5.5]
end

def print_first_element(array)
  puts array.first
end

def print_last_element(array)
  puts array.last
end

def print_common_elements(array_one, array_two)
  p array_one & array_two
end

puts return_array
print_first_element ['first', 2, 3, false, 'end']
print_last_element ['a', 5, 7, true, 'end']
print_common_elements %w(a b c d), %w(b c d e)
