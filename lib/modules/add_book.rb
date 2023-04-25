module AddBook
  def add_a_book
    puts 'Enter the publish date (yyyy-mm-dd) : '
    publish_date = Date.parse(gets.chomp)

    puts 'Enter the publisher'
    publisher = gets.chomp

    puts 'Enter the cover state'
    cover_state = gets.chomp
    book = Book.new(publish_date, publisher, cover_state)

    @books << book
  end
end
