class CashRegister
  attr_accessor :total, :discount, :items_added, :last_transaction

  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
    @items_added = []
  end

  def add_item(title, price, quantity = 1)
    @total += (price * quantity)

    @items_added << ((title + " ") * quantity).split(" ").flatten
  end

  def apply_discount
    @total -= @discount * 10
    if @discount != 0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items_added.flatten
  end

  def void_last_transaction
    @total -= @total
  end
end
