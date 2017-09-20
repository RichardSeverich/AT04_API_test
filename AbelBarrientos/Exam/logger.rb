module Logger

  def add_line value
    file = File.open("execution.log", 'a')
    file.write "%s\n" % value
    file.close
  end

  def add_array array
    file = File.open("execution.log", 'a')
    file.write p array
    file.close
  end

end
