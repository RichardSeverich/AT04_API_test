require_relative '../../../JoseTorrez/practices/modules/goodbye'
require_relative '../../../JoseTorrez/practices/modules/greets'
class Module
  include Greets
  include Goodbye
  def printing
    puts "Ways to greet someone are: #{FIRST_GREETING}"
    puts "#{SECOND_GREETING}"
    puts "#{THIRD_GREETING}"
    puts "Ways to say good bye are: #{FIRST_WAY}"
    puts "#{SECOND_WAY}"
    puts "#{THIRD_WAY}"
  end
end
print = Module.new
print.printing
