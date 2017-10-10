require 'singleton'
class Client_customer
  include Singleton
  attr_accessor :hash_client
  attr_accessor :hash_clientID

  def initialize
    @hash_client ={"123"=> "Yury", "234"=> "Yver", "345"=> "Isabel", "456"=> "Nelly"}
    @hash_client_id ={"123"=> "100", "234"=> "200", "345"=> "500", "456"=> "300"}
    @h = {'perro' => 'canino', 'gato' => 'felino', 'burro' => 'asno', 12 => 'docena'}
  end

  def method_seach_name(name)
    @hash_client.has_value?(name)
  end

  def method_id(id)
    @hash_client_id.has_key?(id)
  end

  def method_money(id)
    @hash_client_id[id]
  end
end

