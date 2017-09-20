require_relative "./greet"
require_relative "./bye"

class Example

  include Greet
  include Bye

end

example = Example.new

example.say_hi
example.say_good_night
example.say_good_afternoon
example.say_good_bye
example.say_see_you_later
example.say_take_care
