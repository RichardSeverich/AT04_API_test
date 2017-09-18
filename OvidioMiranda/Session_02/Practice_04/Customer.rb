=begin
Practice 4
Write 1 Method called customer_id
This Methods should receive 2 arguments :
name and customer_id
Using short-if expression evaluate the id value according :
 Only if ID is greater than 100 print the message “Thanks to be our customer”
 otherwise only print “Thanks”
 change to uppercase the name

Print the text, e.g. :
 Hi <name_in_uppercase>
 Your are our cutomer <ID> <message_according_id>
=end
class Customer
  attr_reader :id
  attr_accessor :name

  def initialize (id, name)
    @id=id
    @name=name.upcase
  end

  def greet
    puts @id > 100 ? "Hi #{@name} thanks to be our customer!" : "Hello #{@name} thanks!"
  end

end

=begin
In the same ruby file create the call to this function :
 a) Using parenthesis  sending some data
 b) Not using parenthesis sending another data
=end
def test
  customerOne = Customer.new(15, 'Ariel')
  customerOne.greet
  customerTwo = Customer.new 115,'Ana'
  customerTwo.greet
end

def main
  puts "##### Enter Customer data #####"
  print 'Id: '
  id = gets.to_i
  print 'Name: '
  name = gets.chomp
  customer = Customer.new(id, name)
  customer.greet
end

test
main
