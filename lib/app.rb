require 'json'

# classes
require_relative './book'
require_relative './author'
require_relative './game'

# modules
require_relative './modules/menu'
require_relative './modules/list_all_books'
require_relative './modules/list_all_musics'
require_relative './modules/list_all_genres'
require_relative './modules/list_all_labels'
require_relative './modules/list_games'
require_relative './modules/list_authors'
require_relative './modules/add_book'
require_relative './modules/add_game'
require_relative './modules/add_a_music'
require_relative './modules/save_data'

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
    @games = load_games_data
    @books = load_book_data
    @music_albums = load_music_albums_data
  end

  include Menu
  include ListAllBooks
  include ListAllLabels
  include AddBook
  include AddGame
  include ListAuthors
  include ListGames
  include AddMusicAlbum
  include ListAllGenres
  include ListAllMusics
  include MusicAlbumData
  include GameData
  include BookData
  include SaveData

  def run
    choice = 0

    while choice != 11
      show_menu
      choice = gets.chomp.to_i

      if choice == 10
        puts " \n Thanks for using catalog\n"
        save_data
        exit
      end

      user_choice = ACTIONS[choice]

      method(user_choice).call
    end
  end
end
