module Logger

  def add_line value
    file = File.open("execution.log", 'a')
    file.write "%s\n" % value
    file.close
  end

end
