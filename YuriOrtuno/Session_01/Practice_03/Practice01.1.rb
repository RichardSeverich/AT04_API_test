SIXTEEN = 16
EIGHT = 8
TWO = 2
SIXTY_FOUR = 64
ZERO_FIVE = (0.5)
puts "test arithmetic operation sum: #{SIXTEEN + SIXTEEN} "
puts "test arithmetic operation rest: #{SIXTEEN - EIGHT} "
puts "test arithmetic operation multiplication: #{EIGHT * EIGHT} "
puts "test arithmetic operation division : #{SIXTEEN / EIGHT} "
puts "test arithmetic operation and modulo: #{SIXTEEN % TWO == 0} "
puts "test exp: #{EIGHT ** TWO}"
puts "test exp with fraction: #{SIXTY_FOUR ** (1/TWO)}"
puts "test exp with decimal: #{SIXTY_FOUR ** ZERO_FIVE}"

puts "test operator == : #{(SIXTY_FOUR ** ZERO_FIVE) == EIGHT}"
puts "test operator >=: #{SIXTY_FOUR >= (TWO ** TWO)}"
puts "test operator !=: #{SIXTY_FOUR != SIXTEEN}"
puts "test operator <=: #{SIXTY_FOUR <= (TWO ** EIGHT)}"

puts "test operator <=>: #{SIXTY_FOUR <=> SIXTY_FOUR}"
puts "test operator <=>: #{SIXTY_FOUR <=> EIGHT}"
puts "test operator <=>: #{SIXTY_FOUR <=> EIGHT ** EIGHT}"

puts "test true && false			: #{true && false}"
puts "test true || false			: #{true || false}"
