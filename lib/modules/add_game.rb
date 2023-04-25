module AddGame
  def create_game
    print 'Multiplayer available? Y/N :'
    multiplayer = gets.chomp.downcase[0..1] == 'y'
    print 'Last played date dd/mm/yyyy :'
    last_played = gets.chomp
    print 'Game publish date dd/mm/yyyy :'
    @games.push(Game.new(multiplayer, last_played))
    puts 'Game created successfully 🕹️'
    show_menu
  end
end
