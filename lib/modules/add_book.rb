module AddBook
  def add_a_book
    print 'Enter the label title: '
    title = gets.chomp

    print 'Enter the label color: '
    color = gets.chomp

    print 'Enter the publish date (dd/mm/yyyy) : '
    publish_date = gets.chomp

    print 'Enter the publisher: '
    publisher = gets.chomp

    print 'Enter the cover state: '
    cover_state = gets.chomp

    label = Label.new(title, color)
    book = Book.new(publish_date, publisher, cover_state)

    book.label = label
    @books << book
  end
end
