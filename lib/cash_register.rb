require "pry"
class CashRegister
  
  attr_accessor :total, :discount, :items, :void_last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    
  end
  
  def add_item(item, price, quantity = 1)
    if quantity > 1
      i = 0 
      while i < quantity
        @items << item
         i += 1
      end
      
      else
        @items << item
     
    end
    self.total += price * quantity
  
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
  
  def void_last_transaction 
    @total -= void_last_transaction
  end
    
    
  
      
      
    
  

  
  
end
