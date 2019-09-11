class CashRegister

  attr_accessor :total, :employee_discount

  def initialize(employee_discount)
    @total = 0
    @employee_discount = employee_discount
  end

  def initialize
    @total = 0
  end
end
