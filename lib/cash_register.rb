class CashRegister

  attr_accessor :total, :discount, :list

  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
    @list = []
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      @list << [title, price]
    end
    @total += price * quantity
  end

  def apply_discount
    msg = ""
    if @discount == 0
      msg = "There is no discount to apply."
    else
      @total *= (100.0 - @discount) / 100.0
      msg = "After the discount, the total comes to $#{@total.to_i}."
    end
    msg
  end

  def items
    items = []
    @list.each do |item|
      items << item[0]
    end
    items
  end

  def void_last_transaction
    @total -= items.last[1].to_i*1.0
  end

end
