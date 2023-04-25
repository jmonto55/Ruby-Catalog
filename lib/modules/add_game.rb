module AddGame
  def add_a_game
    print 'Enter author first name: '
    author_first = gets.chomp

    print 'Enter author last name: '
    author_last = gets.chomp

    print 'Multiplayer available? Y/N :'
    multiplayer = gets.chomp.downcase[0] == 'y'
    p multiplayer

    print 'Last played date dd/mm/yyyy :'
    last_played = gets.chomp

    print 'Game publish date dd/mm/yyyy :'
    publish_date = gets.chomp

    author = Author.new(author_first, author_last)
    game = Game.new(multiplayer, last_played, publish_date)
    game.author = author
    @games.push(game)
    puts 'Game created successfully 🕹️'
    show_menu
  end
end
