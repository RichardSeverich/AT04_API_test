=begin
Lets’ assume you are a user for a user for an online shopping page (like amazon)
Create a class considering :
Initial  amount of items to buy are 0
Initial list of items with the specific price for each one
Initial list of items with the quantity of each one
Initial discount for each item as 0

Create a method to buy an item(ask for the item and for the amount,
after an item is buy, you should decrease the quantity from the list of items)

Create a method to calculated the price according the item/quatity selected

Outside the class call to the methods in order to perform the actions :
 define which items/quntity will be buy
Print the ist of items and the price calculated for each one
Print the balance of each item
Answer the question :
Should be better to use singleton for this implementation? Why?
=end
class Shopping
  def initialize(item, amount=0)
    @amount_items_buy=amount
    @items_price={"dress" => 150, "blouse" => 60,"jacket" => 100}
    @items_quantity={"dress"=> 500, "blouse" => 600,"jacket" => 300}
    @discount=0
    @item_name=item
  end

  def buy()
    @items_quantity.each {|item,quantity|
      if @item_name == item
        newq=quantity - @amount_items_buy
        @items_quantity[item]=newq
      end}

  end

  def cost()
    @items_price.each{|item,price|
     if item == @item_name
       money=@amount_items_buy*price
       puts "the cost of #{item} is #{money} bs"
     end}
  end
  def balance
   @items_quantity.each{|item,quantity| puts "after shopping the store has #{quantity} #{item}"}
  end
end

shop=Shopping.new("dress",2)
shop.buy
shop.cost
shop.balance