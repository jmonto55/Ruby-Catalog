require_relative '../lib/item'

class Genre < Item
  attr_reader :id, :items

  def initialize(name, items)
    @id = Random.rand(1..100)
    @name = name
    @items = items
    super()
  end
end