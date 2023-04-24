require_relative '../../item'
require_relative '../genre'

describe Genre do
  let(:item1) { Item.new(false, Date.new(2010, 1, 1).to_s) }
  let(:item2) { Item.new(false, Date.new(2011, 1, 1).to_s) }

  describe '#add_item' do
    it 'adds the item to the items collection' do
      genre = Genre.new('Rock', [])
      genre.add_item(item1)
      expect(genre.items).to eq([item1])
    end

    it 'sets the item genre to itself' do
      genre = Genre.new('Rock', [])
      genre.add_item(item1)
      expect(item1.genre).to eq(genre)
    end

    it 'does not add duplicates to the items collection' do
      genre = Genre.new('Rock', [item1])
      genre.add_item(item1)
      expect(genre.items).to eq([item1])
    end
  end
end
