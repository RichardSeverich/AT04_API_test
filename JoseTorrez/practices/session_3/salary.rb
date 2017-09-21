class Salary
  _salaries = {'bob' => 10.9, 'larry' => 7.5,
               'jimmy' => 6.0, 'jerry' => 6.5
  }
  _salaries.inspect
  _my_salaries_array = _salaries.select{|name, salary| salary > 7.0}
  p _my_salaries_array
end