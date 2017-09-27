require 'faker'
require 'singleton'

class Client

  include Singleton
  attr_reader :hash_id_client
  attr_reader :hash_id_price

  def initialize
    @hash_id_client = {
      'AT_01' => "Yury",
      'AT_02' => "Simon",
      'AT_03' => "Richard",
      'AT_04' => "Marcos",
      'AT_05' => "Sergio"
    }
    @hash_id_price = {
      'AT_01' => "$100",
      'AT_02' => "$150",
      'AT_03' => "$200",
      'AT_04' => "$250",
      'AT_05' => "$300"
    }
  end
end
