=begin
Write 1 Method called customer_id
1. This Methods
2. should receive 2 arguments : name and customer_id
3. Using short-if expression evaluate the id value according :
		Only if ID is greater than 100 print the message “Thanks to be our customer” otherwise only print “Thanks”
		change to uppercase the name
4. Print the text, e.g. :
	Hi <name_in_uppercase>
	Your are our cutomer <ID> <message_according_id> 
In the same ruby file create the call to this function :
	Using parenthesis  sending some data
	Not using parenthesis sending another data
=end
class Customer
  def  customer_id(name,  customer_id)
  	@greeting = "Thanks"
    if(customer_id > 100)
    		@greeting = "Thanks to be our customer "
    end	
   name = name.upcase
   puts " Hi #{name} "
   puts "Your are our cutomer #{customer_id} #{@greeting} "
  end
end

customer = Customer.new()
customer.customer_id("Richard", 100)
customer.customer_id "Juan", 200
