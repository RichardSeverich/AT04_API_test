def get_array
  %w{one two three four five}
end

def get_array_first array
  array.first
end

def get_array_last array
  array.last
end

def get_common_elemtn array_one, array_two
  array_one & array_two
end

array = get_array
p array
puts get_array_first array
puts get_array_last array
array_two = %w{three four}
p get_common_elemtn array, array_two
