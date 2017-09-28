require 'singleton'
class Clients
  include Singleton
  attr_reader :clients_list, :amount_list
  def initialize
    @clients_list = {'01': 'User01', '02': 'User02', '03': 'User03'}
    @amount_list = {'01': 5, '02': 150, '03': 20}
  end
end