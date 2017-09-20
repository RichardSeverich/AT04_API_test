#class
class Practice
  def printed_ticket(user, destination = 'CBBA', price)
    price = price * 6.96
    puts "The Information for your ticket is:"
    puts "Name: #{user}"
    puts "Destination: #{destination}"
    puts "Price: #{price}"
  end
end

other = Practice.new
print "Insert your name: "
name = gets
print "Insert your destination: "
destino = gets
print "Insert yor price: "
prices = gets.chomp.to_f
other.printed_ticket name, destino, prices