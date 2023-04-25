require_relative '../../item'
require_relative '../music_album'

describe MusicAlbum do
  describe '#can_be_archived?' do
    context 'when the album can be archived' do
      let(:album) { MusicAlbum.new(true) }
      
      it 'returns true' do
        expect(album.can_be_archived?).to eq(false)
      end
    end
    
    context 'when the album cannot be archived' do
      let(:album) { MusicAlbum.new(false) }
      
      it 'returns false' do
        expect(album.can_be_archived?).to eq(false)
      end
    end
  end
end
