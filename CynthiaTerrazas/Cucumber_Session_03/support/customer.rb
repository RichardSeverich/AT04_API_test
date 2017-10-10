
require 'singleton'
  class Customer
    include Singleton

  def initialize
    @hash_id_client = {
        1001 => "Cynthia",
        1002 => "Victoria",
        1003 => "Roberto",
        1004 => "Cesar",
        1005 => "Fernando",
        1006 => "Alvaro"
    }
    @hash_id_price = {
        1001 => 700,
        1002 => 1000,
        1003 => 200,
        1004 => 500,
        1005 => 900,
        1006 => 600
    }

  end

  def method_search_name_client(name)
    @hash_id_client.has_value?(name)
  end

  def method_id(id)
    @hash_id_client.has_key?(id)
  end

  def method_priced(id)
    @hash_id_price[id]
  end
end

