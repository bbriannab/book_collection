require 'rails_helper'

RSpec.describe Book, type: :model do
  context 'validations' do
    it 'is valid with a title, author, price, and published_date' do
      book = Book.new(title: "Harry Potter", author: "J.K. Rowling", price: 20.0, published_date: Date.today)
      expect(book).to be_valid
    end

    it 'is invalid without a title' do
      book = Book.new(title: "")
      expect(book).not_to be_valid
    end

    it 'is invalid without an author' do
      book = Book.new(title: 'Sample Title', author: nil, price: 10, published_date: Date.today)
      expect(book).not_to be_valid
    end

    it 'is invalid without a price' do
      book = Book.new(title: 'Sample Title', author: 'Author Name', price: nil, published_date: Date.today)
      expect(book).not_to be_valid
    end

    it 'is invalid if price is not a number' do
      book = Book.new(title: 'Sample Title', author: 'Author Name', price: 'free', published_date: Date.today)
      expect(book).not_to be_valid
    end

    it 'is invalid without a published_date' do
      book = Book.new(title: 'Sample Title', author: 'Author Name', price: 10, published_date: nil)
      expect(book).not_to be_valid
    end
  end
end
