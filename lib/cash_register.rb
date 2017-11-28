class CashRegister
  attr_accessor :total, :discount

  @@items = []

  def self.items
    @@items
  end

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      self.class.@@items.push(item)
    end
  end

  def apply_discount
     if @discount > 0
       @total = @total * (100 - @discount) / 100
       return "After the discount, the total comes to $#{@total}."
     else
       return "There is no discount to apply."
     end
  end

end
