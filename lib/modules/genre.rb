require_relative '../lib/item'

class Genre < Item
  attr_reader :id, :items

  def initialize(name, items)
    @id = Random.rand(1..100)
    @name = name
    @items = items
    super(false, Date.today.to_s)
  end

  def add_item(item)
    @items << item
    item.genre = self
  end
end