require_relative '../genre'

module ListAllGenres
  def list_all_genres
    Genre.all.each do |genre|
      print "'#{genre.name}' "
    end
  end
end
