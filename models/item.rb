class Item
  attr_accessor :name, :category, :price

  def initialize(name:, category:, price:)
    @name = name
    @category = category
    @price = price
  end
end
