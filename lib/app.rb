require_relative './modules/menu'
require_relative './modules/list_all_books'

ACTIONS = {
  1 => :list_all_books,
  2 => :list_all_musics,
  3 => :list_all_movies,
  4 => :list_of_games,
  5 => :list_all_genres,
  6 => :list_all_labels,
  7 => :list_all_authors,
  8 => :list_all_sources,
  9 => :add_a_book,
  10 => :add_a_music,
  11 => :add_a_movie,
  12 => :add_a_game
}.freeze

class App
  include Menu
  include ListAllBooks

  def run
    choice = 0

    while choice != 14
      show_menu
      choice = gets.chomp.to_i

      if choice == 13
        puts " \n Thanks for using catalog\n"
        exit
      end

      user_choice = ACTIONS[choice]

      method(user_choice).call
    end
  end
end
