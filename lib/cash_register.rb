require "pry"
class CashRegister
  
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    
  end
  
  def add_item(item, price, quantity = 1)
    @items << item
    self.total += price * quantity
    binding.pry
  end
  
  
  def apply_discount
    if @discount > 0 
    new_discount =  @discount.to_f/100
    new_total = @total * new_discount
    @total = @total - new_total
    
      "After the discount, the total comes to $#{@total.to_i}."
    else
       "There is no discount to apply."
      
    end
  end
    
    
  
      
      
    
  

  
  
end
