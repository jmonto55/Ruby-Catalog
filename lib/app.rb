require_relative './modules/menu'
require_relative './modules/list_all_books'

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
  include Menu
  include ListAllBooks

  def run
    choice = 0

    while choice != 11
      show_menu
      choice = gets.chomp.to_i

      if choice == 10
        puts " \n Thanks for using catalog\n"
        exit
      end

      user_choice = ACTIONS[choice]

      method(user_choice).call
    end
  end
end
