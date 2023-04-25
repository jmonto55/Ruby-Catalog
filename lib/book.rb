class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state)
    super
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    return true if super.can_be_archived? || cover_state == 'bad'

    false
  end
end
