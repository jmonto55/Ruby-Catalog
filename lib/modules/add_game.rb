module AddGame
  def create_game
    puts 'Select Game author by number:'
    @data.authors.each_with_index do |author, index|
      puts "[#{index}] - Name: #{author.first_name} #{author.last_name}"
    end
    author = gets.chomp.to_i

    puts 'Select Game genre by number:'
    @data.genres.each_with_index do |genre, index|
      puts "[#{index}] - Genre: #{genre.name}"
    end
    genre = gets.chomp.to_i

    puts 'Select Game label by number:'
    @data.labels.each_with_index do |label, index|
      puts "[#{index}] - Title: #{label.title} Color: #{label.color}"
    end
    label = gets.chomp.to_i

    create_game_props(author, label, genre, @data)
  end

  def create_game_props(author, label, genre, data)
    print 'Multiplayer available? Y/N :'
    multiplayer = gets.chomp.downcase[0..1] == 'y'
    print 'Last played date dd/mm/yyyy :'
    last_played = gets.chomp
    print 'Game publish date dd/mm/yyyy :'
    publish_date = gets.chomp

    game = Game.new(multiplayer, last_played, publish_date)
    game.author = data.authors[author]
    game.label = data.labels[label]
    game.genre = data.genres[genre]
    @games.push(game)
    puts 'Game created successfully 🕹️'
    show_menu
  end
end
