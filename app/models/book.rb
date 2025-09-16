class Book < ApplicationRecord
<<<<<<< HEAD
    has_many :user_books
    has_many :users, through: :user_books

    validates :title, :author, :published_date, presence: true
    validates :price, presence: true, numericality: true
end
  
  
=======
end
>>>>>>> a7d1a16c8a5c5666dd329ada4f6756b41bf0480e
