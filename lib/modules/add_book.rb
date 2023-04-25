module AddBook
  def add_a_book
    puts 'Enter the publish date (yyyy-mm-dd) : '
    date = gets.chomp
    # publish_date = Date.parse(date)
    publish_date = date

    puts 'Enter the publisher'
    publisher = gets.chomp

    puts 'Enter the cover state'
    cover_state = gets.chomp
    book = Book.new(publish_date, publisher, cover_state)

    @books << book
  end
end
