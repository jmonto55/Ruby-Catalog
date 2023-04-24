require_relative '../item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(on_spotify)
    @on_spotify = on_spotify
    super(false, Date.today.to_s)
  end

  def can_be_archived?
    super && on_spotify
  end
end