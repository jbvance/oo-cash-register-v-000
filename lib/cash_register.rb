class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
     if @discount > 0
       @total = @total * (100 - @discount) / 100
    else
      @total
     end
  end

end
