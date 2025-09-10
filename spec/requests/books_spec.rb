require 'rails_helper'

RSpec.describe "Books", type: :request do
  describe "POST /books" do
    context "with valid attributes" do
      it "creates a book and shows success flash" do
        expect {
          post books_path, params: { book: { title: "Valid Title", author: "Author", price: 9.99, published_date: "2025-09-10" } }
        }.to change(Book, :count).by(1)

        expect(response).to redirect_to(books_path)
        follow_redirect!

        expect(response.body).to include("Book was successfully created.")
      end
    end

    context "with invalid attributes" do
      it "does not create book without author and shows error flash" do
        expect {
          post books_path, params: { book: { title: "No Author", author: "", price: 9.99, published_date: "2025-09-10" } }
        }.not_to change(Book, :count)

        expect(response).to render_template(:new)
      end

      it "does not create book without price and shows error flash" do
        expect {
          post books_path, params: { book: { title: "No Price", author: "Author", price: "", published_date: "2025-09-10" } }
        }.not_to change(Book, :count)

        expect(response).to render_template(:new)
      end

      it "does not create book with non-numeric price" do
        expect {
          post books_path, params: { book: { title: "Bad Price", author: "Author", price: "free", published_date: "2025-09-10" } }
        }.not_to change(Book, :count)

        expect(response).to render_template(:new)
      end

      it "does not create book without published_date" do
        expect {
          post books_path, params: { book: { title: "No Date", author: "Author", price: 9.99, published_date: "" } }
        }.not_to change(Book, :count)

        expect(response).to render_template(:new)
      end
    end
  end
end
