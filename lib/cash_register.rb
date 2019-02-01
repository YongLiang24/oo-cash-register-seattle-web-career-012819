require 'pry'
class CashRegister
  attr_accessor :discount, :total
  def initialize(discount=20)
    @discount = discount
    @total=0
    @array=[]
  end

  def add_item(item_name, cost, quantity=1)
    @total += cost * quantity
    quantity+=1
    count=1
    while count<quantity
    @array << item_name
    count+=1
    end
  end

  def apply_discount
    if @total==0
      return "There is no discount to apply."
  else
    @total = @total - (@total * @discount)/100
    return "After the discount, the total comes to $#{@total}."
  end
  end

  def items
    @array
  end

  def void_last_transaction
    @total-=@total
  end
end
#binding.pry
