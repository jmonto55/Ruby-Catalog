require_relative '../genre'
require_relative '../music_album'

module AddMusicAlbum
  def add_a_music
    puts 'Enter Genre :'
    name = gets.chomp
    print 'On spotify? Y/N :'
    on_spotify = gets.chomp.downcase[0..1] == 'y'
    print 'Album publish date (DD/MM/YYYY) :'
    publish_date = gets.chomp
    new_genre = Genre.new(name)
    new_album = MusicAlbum.new(on_spotify, publish_date)
    new_genre.add_item(new_album)
    puts 'Music album added successfully'
  end
end
