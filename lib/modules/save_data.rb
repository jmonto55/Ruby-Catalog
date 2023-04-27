require_relative './preserve_book_data'
require_relative './preserve_games_data'
require_relative './preserve_music_albums_data'

module SaveData
  def save_data
    save_games_data
    save_book_data
    save_music_albums_data
  end
end
