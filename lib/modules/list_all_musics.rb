require_relative '../genre'
require_relative '../music_album'

module ListAllMusics
  def list_all_musics
    Genre.all.each do |genre|
      puts "Genre: #{genre.name}"
      genre.items.each do |item|
        puts "Album: #{item.name}"
      end
    end
  end
end
