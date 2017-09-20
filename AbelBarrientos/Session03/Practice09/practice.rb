require 'faker'
require 'singleton'
class Amazon

  include Singleton
  attr_accessor :array_of_items
  attr_accessor :hash_of_items_price
  attr_accessor :hash_of_items_quantity

  def initialize
    @amount_of_items = 0
    @array_of_items = Array.new
    10.times do
      @array_of_items.push Faker::Commerce.unique.product_name
    end
    @hash_of_items_price = {}
    @hash_of_items_quantity = {}
    @array_of_items.each {|item|
      @hash_of_items_price.store item, Faker::Commerce.price
      @hash_of_items_quantity.store item, Faker::Number.between(5, 20)
    }
    @discount = 0
  end

  def print_hash
    puts "Available list of products:"
    @array_of_items.each_with_index {|item, index|
      puts "#{index}\t#{item}\t#{@hash_of_items_price[item]}\t#{@hash_of_items_quantity[item]}"
    }
  end

  def input_index
    puts "Select an index:"
    @item_index = gets.chomp
    until /^[0-9]/ === @item_index && @item_index.to_i >= 0 && @item_index.to_i <= 9
      print "Please try again: "
      @item_index = gets.chomp
    end
    @item_index = @item_index.to_i
  end

  def input_quantity
    puts "Select quantity:"
    @item_quantity = gets.chomp
    @keys = @hash_of_items_quantity.keys
    max = @hash_of_items_quantity[@keys[@item_index]]
    until /^[0-9]+/ === @item_quantity && @item_quantity.to_i <= max && @item_quantity.to_i > 0
      print "Please try again: "
      @item_quantity = gets.chomp
    end
    @item_quantity = @item_quantity.to_i
  end

  def buy_item
    input_index
    input_quantity
  end

  def total_price
    @hash_of_items_quantity[@keys[@item_index]] -= @item_quantity
    puts "Buyed: #{@keys[@item_index]} Quantity: #{@item_quantity} Total Price: #{(@item_quantity * @hash_of_items_price[@keys[@item_index]]).round 2}"
  end

end

amazon = Amazon.instance
amazon.print_hash
amazon.buy_item
amazon.total_price
amazon.print_hash
