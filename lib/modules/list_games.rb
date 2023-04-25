module ListGames
  def list_all_games
    puts 'Games:'
    @games.each do |game|
      puts "Publish Date: #{game.publish_date}, Multiplayer: #{game.multiplayer}, Last Played: #{game.last_played_at}"
    end
  end
end
