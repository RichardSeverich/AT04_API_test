=begin
Session 3 - Practice 9
Lets’ assume you are a user for a user for an online shopping page (like amazon)
1. Create a class considering :
 1. Initial  amount of items to buy are 0
 2. Initial list of items with the specific price for each one
 3. Initial list of items with the quantity of each one
 4. Initial discount for each item as 0
 5. Create a method to buy an item(ask for the item and for the amount, after an item is buy, you should decrease the quantity from the list of items)
 6 r. Create a method to calculated the price according the item/quatity selected
Outside the class call to the methods in order to perform the actions :
 1. define which items/quantity will be buy
 2. Print the ist of items and the price calculated for each one
 3. Print the balance of each item
2. Answer the question :
 1.Should be better to use singleton for this implementation? Why?

=end

class Practice9

  def initialize
    #1. Initial  amount of items to buy are 0
    @items_to_buy = 0
=begin
    2. Initial list of items with the specific price for each one
    3. Initial list of items with the quantity of each one
    4. Initial discount for each item as 0
=end
    @items = {
        cellphones: {
            iphone8: {
                price: 850,
                quantity: 50,
                discount: 0
            },
            iphone7s: {
                price: 800,
                quantity: 35,
                discount: 0
            },
            iphone7: {
                price: 780,
                quantity: 15,
                discount: 0
            }
        }
    }
    @total_cost = 0.0
  end

  def print_detail_items
    puts '===================== '
    @items[:cellphones].keys.each do |index|
      puts "**#{index.capitalize}**"
      @items[:cellphones][index].each {|key, value| puts "#{key.capitalize}: #{value}"}
      puts '===================== '
    end
  end

  #5. Create a method to buy an item
  def buy_an_item
    puts '##### CellPhones for sale #####'
    print_detail_items
    puts '##### Register Purchase #####'
    print 'Please indicate the cell phone name to buy: '
    item_name = gets.chomp.downcase
    if exist_item(item_name)
      print 'Introduce the quantity: '
      @items_to_buy = gets.to_i
      amount_receivable = calculate_the_price(item_name, @items_to_buy)
      update_quantity_of_an_item(item_name, @items_to_buy)
      print_details_of_sale(item_name, amount_receivable)
    else
      puts '##### Error #####'
      puts 'Invalid item name'
    end
    puts '===================== '
  end

  #6 r. Create a method to calculated the price according the item/quatity selected
  def calculate_the_price(item, quantity)
    @items[:cellphones][item.to_sym][:price] * quantity
  end

  #After an item is buy, you should decrease the quantity from the list of items
  def update_quantity_of_an_item(item, items_bought)
    @items[:cellphones][item.to_sym][:quantity] -= items_bought
  end

  def print_details_of_sale(item, amount_receivable)
    puts '##### Detail of Sale #####'
    puts "Item Name : #{item.capitalize}"
    puts "Total to pay #{format('%.2f $us', amount_receivable)}"
    puts '===================== '
  end

  def exist_item(item_name)
    exist=false
    @items[:cellphones].keys.each do |item|
      if item_name.eql?(item.to_s)
        exist=true
      end
    end
    return exist
  end

end


sample = Practice9.new
sample.buy_an_item
#3. Print the balance of each item
puts '##### Current balance of each item #####'
sample.print_detail_items




