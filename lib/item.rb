require 'date'

class Item
  attr_reader :id, :archived, :genre, :label, :author

  def initialize(publish_date, archived: false)
    @id = Random.rand(1..100)
    @archived = archived
    @publish_date = publish_date
  end

  def genre=(genre)
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end

  def author=(author)
    @author = author
    author.items.push(self) unless author.items.include?(self)
  end

  def label=(label)
    @label = label
    label.items.push(self) unless label.items.include?(self)
  end

  def can_be_archived?
    (Date.today - Date.parse(@publish_date)).to_i > 365 * 10
  end

  def move_to_archive
    return @archived = true if can_be_archived?
  end
end
