# app/models/book_author.rb
class BookAuthor < ApplicationRecord
  belongs_to :book
  belongs_to :author
end
