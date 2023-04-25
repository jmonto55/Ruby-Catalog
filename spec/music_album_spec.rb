require_relative '../lib/item'
require_relative '../lib/music_album'

describe MusicAlbum do
  describe '#can_be_archived?' do
    context 'when the album can be archived' do
      let(:album) { MusicAlbum.new('My life', true, '2000-01-01') }

      it 'returns true' do
        expect(album.can_be_archived?).to eq(true)
      end
    end

    context 'when the album cannot be archived' do
      let(:album) { MusicAlbum.new('My life', false, '2000-01-01') }

      it 'returns false' do
        expect(album.can_be_archived?).to eq(false)
      end
    end
  end
end
