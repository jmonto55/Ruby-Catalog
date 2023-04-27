require_relative './item'

class Book < Item
  attr_accessor :publisher, :cover_state, :publish_date

  def initialize(publish_date, publisher, cover_state)
    super(publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    return true if super || cover_state == 'bad'

    false
  end

  def to_hash
    {
      publisher: @publisher,
      publish_date: @publish_date,
      cover_state: @cover_state,
      label: { title: label.title, color: label.color }
    }
  end
end
