# Install Gem (For random data generation):
# gem install faker

require 'faker'
require 'singleton'

class ShoppingSingleton
  include Singleton

  def create_products(items_number)
    initialize_id_items_list(items_number)
    initialize_items_price_list
    initialize_items_quantity_list
    @items_to_buy = Hash.new
  end

  def initialize_id_items_list(items_number)
    @id_items = Hash.new
    items_number.times do
      @id_items.store(Faker::Number.unique.number(5), Faker::Commerce.unique.product_name)
    end
  end

  def initialize_items_price_list
    @items_price = Hash.new
    @id_items.values.each do |value|
      @items_price.store(value, Faker::Number.between(10, 250))
    end
  end

  def initialize_items_quantity_list
    @items_quantity = Hash.new
    @id_items.values.each do |value|
      @items_quantity.store(value, Faker::Number.between(1, 15))
    end
  end

  def calculate_price(id, quantity)
    product_name = @id_items[id]
    @items_quantity[product_name].to_i >= quantity.to_i ? @items_price[product_name].to_f * quantity.to_i : 0
  end

  def print_balance
    puts 'ID, PRODUCT NAME, QUANTITY, PRICE'
    @id_items.each do |key, value|
      puts "#{key}, #{value}, #{@items_quantity[value]},#{@items_price[value]}USD"
    end
  end

  def buy_item
    puts 'Enter the product id'
    id = gets.chomp
    puts 'Enter the product quantity'
    quantity = gets.chomp
    total_price = calculate_price(id, quantity)
    if total_price != 0
      product_name = @id_items[id]
      @items_quantity[product_name] = @items_quantity[product_name].to_i - quantity.to_i
      @items_to_buy.store(product_name, total_price)
    else
      puts 'Not enough items'
    end
  end

  def print_items_to_buy
    puts 'PRODUCT NAME, TOTAL PRICE'
    @items_to_buy.each do |key, value|
      puts "#{key}, #{value}"
    end
  end

  def main_menu
    option_value = 0
    while option_value != 4
      puts "MAIN MENU\n1. List Products\n2. Buy Product\n3. Print Buy List\n4. Exit"
      option_value = gets.to_i
      if option_value == 1
        print_balance
      elsif option_value == 2
        buy_item
      elsif option_value == 3
        print_items_to_buy
      end
    end
  end
end

shopping = ShoppingSingleton.instance
shopping.create_products(10)
shopping.main_menu
