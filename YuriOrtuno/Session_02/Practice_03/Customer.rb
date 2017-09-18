class Customer
  def customer_id name, id
    message = id > 100 ? "Thanks to be our customer" : "Thanks"
    puts "Hi #{name.to_s.upcase} Your are our cutomer #{id} #{message}"
  end
end

Customer.new().customer_id("yury",95)
Customer.new().customer_id"yver",105



