require 'rails_helper'

RSpec.describe Book, type: :model do
  it "has a title" do
    book = Book.first
    expect(book.title).not_to be_nil
  end
end
