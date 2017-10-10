require 'singleton'
class ClientRegistration
  include Singleton

  attr_accessor :clients_id_name
  attr_accessor :clients_id_price

  def initialize
    @clients_id_name = Hash.new
    @clients_id_price = Hash.new
  end
end
