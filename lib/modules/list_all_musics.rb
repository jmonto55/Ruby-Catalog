module ListAllMusics
  def list_all_musics
    puts 'Music Albums:'
    @music_albums.each do |music|
      puts "- #{music.aname}"
    end
  end
end
