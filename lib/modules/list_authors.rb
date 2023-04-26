module ListAuthors
  def list_all_authors
    puts 'Authors:'
    @games.each do |game|
      puts "- #{game.author.first_name} #{game.author.last_name}"
    end
  end
end
