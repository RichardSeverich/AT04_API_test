class Practice
  attr_accessor :list_price, :list_qtty
  def initialize
    @items_tu_buy = 0
    @list_price = {'cosa1'=> 10, 'cosa2' => 8, 'cosa3' => 15, 'cosa4' =>  20}
    @list_qtty = {'cosa1' => 5, 'cosa2' =>  10, 'cosa3' =>  2, 'cosa4' =>  18}
    @discount = 0
  end

  def buy_an_item item, amount
    if @list_qtty.key? item
      @list_qtty[item]< amount ? "Don't have the amount" : @list_qtty[item] = @list_qtty[item] - amount
    else
      puts "The item #{@item} does't exist"
    end

  end

  def calculate_price item, amount
    price = @list_price[item] * amount
    price
  end

end
other = Practice.new
print "What item do you want?: "
item = gets.chomp
print "How many do you want?: "
amount = gets.chomp.to_i
other.buy_an_item item, amount
other.calculate_price item, amount







