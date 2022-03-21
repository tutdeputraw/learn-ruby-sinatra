class Item
  attr_reader :name, :category, :price

  def initialize(name:, category:, price:)
    @name = name
    @category = category
    @price = price
  end
end
