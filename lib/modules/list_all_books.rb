module ListAllBooks
  def list_all_books
    @books.each_with_index do |book, i|
      puts "#{i} - Publisher: #{book.publisher}, publish date: , cover state: #{book.cover_state}"
    end
  end
end
