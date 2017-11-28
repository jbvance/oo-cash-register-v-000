class CashRegister
  attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    @total += discount > 0 ? price * (100-@discount) / 100 * quantity : price * quantity
  end

end
