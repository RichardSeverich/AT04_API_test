module Logger
  def send_logger value
    file = File.open("execution.log", 'a')
    file.write "%s\n" % value
    file.close
  end
end