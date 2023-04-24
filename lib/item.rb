class Item
  attr_reader :id, :archived

  def initialize(obj, genre, author, source, label)
    @id = Random.rand(1..100)
    @archived = obj.archived
    @publish_date = obj.publish_date

    @genre = genre
    genre.items.push(self)

    @author = author
    author.items.push(self)

    @source = source
    source.items.push(self)

    @label = label
    label.items.push(self)
  end

  def can_be_archived?
    @published_date > 10
  end

  def move_to_archive
    return @archived = true if can_be_archived?
  end
end
