require 'set'

module ListAllGenres
  def list_all_genres
    puts 'Genres:'
    genres = Set.new
    @music_albums.each do |music|
      genres << "#{music.genre.name}"
    end
    genres.each do |genre|
      puts "- #{genre}"
    end
  end
end
