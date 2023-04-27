module ListAllBooks
  def list_all_books
    @books.each_with_index do |book, i|
      puts "#{i} - Publish date: #{book.publish_date}, publisher: #{book.publisher}, cover state: #{book.cover_state}"
    end
  end
end
