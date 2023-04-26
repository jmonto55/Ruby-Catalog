module GameData
  def save_games_data
    games_data = @games.map(&:to_hash)
    File.write('data/games.json', JSON.pretty_generate(games_data))
  end

  def load_games_data
    return [] unless File.exist?('data/games.json')

    JSON.parse(File.read('data/games.json')).map do |game|
      author = Author.new(game['author']['first_name'], game['author']['last_name'])
      game = Game.new(game['multiplayer'], game['last_played_at'], game['publish_date'])
      game.author = author
      game
    end
  end
end
