class Item
  attr_reader :id, :archived

  def initialize(obj, genre, author, source, label)
    @id = Random.rand(1..100)
    @archived = obj.archived
    @publish_date = obj.publish_date
  end
  
  def genre(genre)
    @genre = genre
    genre.items.push(self)
  end

  def author(author)
    @author = author
    author.items.push(self)
  end

  def source(source)
    @source = source
    source.items.push(self)
  end

  def label(label)
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
