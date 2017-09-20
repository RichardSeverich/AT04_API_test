require 'singleton'
class Shopping_online
  include Singleton

  def initialize
    @amount_buy = 0
    @item_price = Hash.new
    @item_quantity = Hash.new
    @discount = 0
    @value = 0
  end

  def buy_item
    @item_price.each_with_index {|(key, value), index| puts "#{index+1}.- name is: #{key} --> price is : #{value}"}
    puts @item_quantity
    puts "Enter the product name to buy"
    name = gets.chomp
    puts "Enter quentity to buy"
    quantity = gets.chomp.to_i
    if @item_quantity[name] >= quantity
      price_by_quantity name, quantity
      @item_quantity[name] -= quantity
    else
      puts "doesn't exist that quantity"
    end
    puts @item_quantity

  end

  def price_by_quantity product, quantity
    puts "the price total is : #{quantity * @item_price[product]}"
  end


  def register_item
    puts "input name item"
    item = gets.chomp
    puts "input price item"
    item_price = gets.chomp.to_i
    puts "input price item quantity"
    item_quantity = gets.chomp.to_i
    @item_price.store(item, item_price)
    @item_quantity.store(item, item_quantity)
  end


  def any
    @value = 10
  end

  def some
    @value
  end

end

# store one
store1 = Shopping_online.instance
3.times do
  puts store1.register_item
end


#client one
client1 = Shopping_online.instance
client1.buy_item


#client two
client2 = Shopping_online.instance
client2.buy_item