class CashRegister

  attr_accessor :total, :discount, :list
  
  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
    @list = {}
  end

  def add_item(title, price, quantity = 1)
    list[title] = price
    @total += price * quantity
  end

end
