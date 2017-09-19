require_relative "./module_hello"
require_relative "./module_bye"
class Greets
include Hello
include Bye
end
greets=Greets.new
puts greets.greets_hello
puts greets.greets_bye
