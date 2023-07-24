# app/models/book.rb
class Book < ApplicationRecord
  has_many :book_authors
  has_many :authors, through: :book_authors
  has_many :loans

  validates :title, presence: true
  validates :ISBN, presence: true
end
