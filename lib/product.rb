require 'pry'

class Product
  attr_reader :name,
              :category,
              :unit_price,
              :quantity

  def initialize(category, name, unit_price, quantity)
    @category = category
    @name = name
    @unit_price = unit_price
    @quantity = quantity.to_i
    @hoard = false
  end

  def total_price
    @unit_price * @quantity
  end

  def hoard
    @hoard = true
  end

  def is_hoarded?
    @hoard == true
  end
end
