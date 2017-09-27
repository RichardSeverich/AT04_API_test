require 'singleton'
class Client
  include Singleton
  attr_accessor :hash_clients_names
  attr_accessor :hash_clients_price
  def initialize
    @hash_clients_names = Hash.new
    @hash_clients_price = Hash.new
  end
end
