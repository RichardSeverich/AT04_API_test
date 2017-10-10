require 'singleton'
class Customer
  include Singleton
  attr_accessor :hash_customer
  attr_accessor :hash_prices

  def initialize

    @hash_customer = {
        1 => 'Ovidio',
        2 => 'Ana',
        3 => 'Martha',
        4 => 'Carmen'
    }

    @hash_prices = {
        1 => 358,
        2 => 85,
        3 => 236,
        4 => 152
    }

  end

  def search_customer_by_id(id)
    @hash_customer.has_key?(id.to_i)
  end

  def search_customer_by_name(name)
    @hash_customer.has_value?(name)
  end

  def search_customer_by_id_and_total_price(id, total_price)
    @hash_prices.has_key?(id.to_i)&& @hash_prices.has_value?(total_price.to_f)
  end

  def search_customer_by_id_and_name(id, name)
    search_customer_by_id(id.to_i)&& search_customer_by_name(name)
  end


  def search_customer(id, name, total_price)
    if search_customer_by_id_and_total_price(id, total_price) && search_customer_by_id_and_name(id, name)
      return "The Client exists in the client list"
    else
      return "The Client does not exist in client list"
    end
  end

end


=begin
sample = Customer.instance
puts sample.search_customer_by_id(1)
puts sample.search_customer_by_name("Ovidio")
puts sample.search_customer_by_id_and_total_price(1, 358)
puts sample.search_customer(1,"Ovidio", 358)
puts sample.search_customer(5,"Optimus", 485)
=end


