module AddBook
  def add_a_book
    puts 'Enter the label title'
    title = gets.chomp

    puts 'Enter the label color'
    color = gets.chomp

    puts 'Enter the publish date (dd/mm/yyyy) : '
    publish_date = gets.chomp

    puts 'Enter the publisher'
    publisher = gets.chomp

    puts 'Enter the cover state'
    cover_state = gets.chomp

    label = Label.new(title, color)
    book = Book.new(publish_date, publisher, cover_state)

    book.label = label
    @books << book
  end
end
