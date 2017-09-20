#Class Practice
class Practice
  def customer_id(name, customer_id)
    puts customer_id > 100 ? "Thanks to be our customer" : "Thanks"
    name = name.upcase
  end
end

other = Practice.new
puts "Please insert you name: "
name = gets.chomp
customer_id = 101
puts "Hi #{name}!"
puts "Your are our customer #{customer_id} #{other.customer_id(name, customer_id)}"
#Other call method customer_id
puts "Your are our customer #{customer_id} #{other.customer_id name, customer_id}"

