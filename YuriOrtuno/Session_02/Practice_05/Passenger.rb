class Passenger

  def initialize name, ticket,  destine = "CBBA"
    @name = name
    @destine = destine
    @ticket = convert_dolars ticket
  end

  def convert_dolars(ticket)
    '%.2f' % (ticket.to_f*6.94)
  end

  def show_values
    puts @name
    puts @destine
    puts @ticket
  end


end

passenger = Passenger.new gets.chomp, gets.chomp.to_f,gets.chomp
passenger.show_values

passenger = Passenger.new gets.chomp, gets.chomp.to_f
passenger.show_values