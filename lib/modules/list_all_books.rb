# TODO: exemple method to handle subcategory

module ListAllBooks
  def list_all_books
    puts 'What category'
    category = gets.chomp.to_i

    puts category
  end
end
