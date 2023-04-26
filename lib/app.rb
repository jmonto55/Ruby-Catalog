require_relative './modules/menu'
require_relative './modules/list_all_books'
require_relative './modules/add_a_music'
require_relative './modules/list_all_musics'
require_relative './modules/list_all_genres'
require_relative './modules/preserve_music_albums_data'
require 'json'

ACTIONS = {
  1 => :list_all_books,
  2 => :list_all_musics,
  3 => :list_of_games,
  4 => :list_all_genres,
  5 => :list_all_labels,
  6 => :list_all_authors,
  7 => :add_a_book,
  8 => :add_a_music,
  9 => :add_a_game
}.freeze

class App
  def initialize
    @games = []
    @books = []
    @music_albums = load_music_albums_data
    @data = []
    # @data contains genres, labels, and authors
  end

  include Menu
  include ListAllBooks
  # include AddGame
  # include ListAuthors
  # include ListGames
  include AddMusicAlbum
  include ListAllGenres
  include ListAllMusics
  include MusicAlbumData

  def run
    choice = 0

    while choice != 11
      show_menu
      choice = gets.chomp.to_i

      if choice == 10
        puts " \n Thanks for using catalog\n"
        save_music_albums_data
        exit
      end

      user_choice = ACTIONS[choice]

      method(user_choice).call
    end
  end
end
