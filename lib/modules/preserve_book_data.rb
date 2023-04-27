module BookData
  def save_book_data
    books_data = @books.map(&:to_hash)
    File.write('data/books.json', JSON.pretty_generate(books_data))
  end

  def load_book_data
    return [] unless File.exist?('data/books.json')

    JSON.parse(File.read('data/books.json')).map do |book|
      label = Label.new(book['label']['title'], book['label']['color'])
      book = Book.new(book['publish_date'], book['publisher'], book['cover_state'])
      book.label = label

      book
    end
  end
end
