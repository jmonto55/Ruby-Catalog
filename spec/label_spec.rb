require_relative '../lib/label'
require_relative '../lib/book'

describe Label do
  describe 'when creating a book' do
    book = Book.new('2023-04-25', 'hans', 'bad')
    label = Label.new('Test', 'red')
    label.add_item(book)

    it 'should add it to the label items array' do
      expect(label.items).to eq([book])
    end

    label.add_item(book)
    it 'should not add it if already in' do
      expect(label.items).to eq([book])
    end
  end
end
