class ItemController
  def initialize
    @items = []
  end

  def add_item(new_item)
    @items.append(new_item)
  end

  def get_items
    @items
  end
end
