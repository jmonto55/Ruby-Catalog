require_relative '../lib/book'
require_relative '../lib/item'

describe Book do
  describe 'when creating a new book' do
    publish_date = '2023-04-25'
    publisher = 'Hans Rameau'
    cover_state = 'bad'
    book = Book.new(publish_date, publisher, cover_state)
    book2 = Book.new('2023-01-01', publisher, 'good')

    it 'should be an instance of BOOK' do
      expect(book).to be_instance_of(Book)
    end

    it 'should return true if cover state equal to bad or can_be_archived? is true' do
      expect(book.can_be_archived?).to be(true)
    end

    it 'should return false if cover state equal to good or can_be_archived? is true' do
      expect(book2.can_be_archived?).to be(false)
    end
  end
end
