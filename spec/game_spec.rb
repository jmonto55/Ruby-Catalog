require_relative '../lib/game'

describe Game do
  context 'Create a Game instance and test its methods' do
    game = Game.new(true, '02/02/2020', '02/02/2010')
    it 'Should return a game with last played date = 02/02/2020' do
      expect(game.last_played_at).to eq '02/02/2020'
      expect(game.publish_date).to eq '02/02/2010'
    end

    it 'Should return true if game publish date is older than 10 years' do
      expect(game.can_be_archived?).to eq true
    end

    it 'Should return true if game is older than 10 years and last played 2 or more years ago' do
      expect(game.move_to_archive).to eq true
    end
  end
end
