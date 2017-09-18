=begin

Write 1 Method called customer_id
This Methods
should receive 2 arguments : name and customer_id
Using short-if expression evaluate the id value according :
Only if ID is greater than 100 print the message “Thanks to be our customer” otherwise only print “Thanks”
change to uppercase the name
Print the text, e.g. :
Hi <name_in_uppercase>
Your are our cutomer <ID> <message_according_id>
In the same ruby file create the call to this function :
Using parenthesis  sending some data
Not using parenthesis sending another data

=end



  def customer_method(name,id)
    message= (id>100)? "Thanks to be our customer":"Thanks"
    puts "Hi #{name.upcase}"
    puts "Your are our cutomer #{id} #{message}"

  end

customer_method("cynthia", 88)

  customer_method"victoria", 77