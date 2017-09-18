class Customer
  def customer_id(name, customer_id)
    @name = name.upcase
    @customer_id = customer_id
    @message = @customer_id > 100 ? "Thanks to be our customer." : "Thanks."
  end

  customer_id('JJ', 100)
  puts "Hello #{@name}"
  puts "You are our customer #{@customer_id}. #{@message}"
  customer_id 'Joe', 101
  puts "Hello #{@name}"
  puts "You are our customer #{@customer_id}. #{@message}"
end