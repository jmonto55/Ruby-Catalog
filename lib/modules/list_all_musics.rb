module ListAllMusics
  def list_all_musics
    puts 'Music Albums:'
    @music_albums.each do |music|
      puts "- Title: #{music.name}, Publish Date: #{music.publish_date}"
    end
  end
end
