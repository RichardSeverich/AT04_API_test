=begin
Write 1 Method called customer_id
This Methods
  - Should receive 2 arguments : name and customer_id
  - Using short-if expression evaluate the id value according :
  - Only if ID is greater than 100 print the message “Thanks to be our customer” otherwise only print “Thanks”
  - Change to uppercase the name
Print the text, e.g. :
Hi <name_in_uppercase>
Your are our customer <ID> <message_according_id>
=end

def customer_id (name, id)
  message = id > 100 ? 'Thanks to be our customer' : 'Thanks'
  puts "Hi #{name.upcase}\nYour are our customer #{id}. #{message}"
end

#Method call with parenthesis
customer_id('Albert', 50)
#Method call without parenthesis
customer_id 'Nikola', 150