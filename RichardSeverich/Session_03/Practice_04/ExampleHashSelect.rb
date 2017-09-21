salaries = { "bob " => 10.9,
		"larry " => 7.5,
		"jimmy " => 6.0,
		"jerry " => 6.5}
salaries.inspect
mySalaryArray = salaries.select{|name,salary| salary < 7.0}
puts mySalaryArray
