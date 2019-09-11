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

  def apply_discount
    msg = ""
    if @discount == 0
      msg = "There is no discount to apply."
    else
      @total *= (100.0 - @discount) / 100.0
      msg = "After the discount, the total comes to $#{@total}."
    end
    
  end

end
