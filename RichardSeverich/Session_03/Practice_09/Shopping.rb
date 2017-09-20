require 'singleton' 
require 'faker' 
class Shopping
	attr_accessor :MyHashItems
	attr_accessor :MyHashPrice
	attr_accessor :MyHashQuantity
	include Singleton  
	def initialize
		@MyHashItems = Hash.new
		@MyHashPrice = Hash.new
		@MyHashQuantity = Hash.new
       items_random()
 	end
 	def items_random()
		count = 0
		prng = Random.new
		until count > 99 
			product_name = Faker::Commerce.product_name #=> "Practical Granite Shirt"
			product_price =  Faker::Commerce.price #=> "44.6"
			count +=1
			@MyHashItems.store count,product_name
			@MyHashPrice.store count,product_price
			@MyHashQuantity.store count,prng.rand(100)	
		end
 	end

 	def printItemsWithPrice()
		@MyHashItems.each do |(key, value)|
			puts "***********  PRODUCT NUMBER #{key}  ***********"
			puts "NAME : #{value} "
			puts "PRICE : #{@MyHashPrice[key]} $"
			puts "QUANTITY : #{@MyHashQuantity[key]}"
		end
	end

	def items_discount(keyItem, quantity)
		@MyHashQuantity[keyItem] -= quantity
	end

	def calculate_price(keyItem, quantity)
		@MyHashPrice[keyItem] * quantity
	end

end

flag = false
myShopping = Shopping.instance 
until flag 
	puts "SELECT TO OPTION"
	puts "1. SHOW PRODUCTS"
	puts "2. BUY PRODUCTS"
	puts "3. EXIT"
	op = gets.chomp
	sel = case op
	when "1" then
		puts "********* HELLO THIS IS THE LIST OF ITEMS OF SHOPPING *********"
		myShopping.printItemsWithPrice()
	when "2" then
		puts "********* ENTER NUMBER OF ITEM THAT YOU NEED TO BUY *********"
		numberItem = gets.chomp.to_i
		puts "********* ENTER QUANTITY  *********"
		quantityItem = gets.chomp.to_i
		myShopping.items_discount(numberItem, quantityItem)
		puts "********* THE PRICE TO PAY FOR THE ITEMS PURCHASED IS *********"
		puts "YOU SHOULD PAY #{myShopping.calculate_price(numberItem,quantityItem)} $"
		puts "********* YOU HAVE JUST BUY THANKS FOR YOUR PURCHASE *********"
	when "3" then
		flag = true
	else
		puts "INCORRECT OPTION TRY AGAIN PLEASE"
	end
end
