# app/models/author.rb
class Author < ApplicationRecord
  has_many :book_authors
  has_many :books, through: :book_authors

  validates :name, presence: true
  validates :birth_date, date: { allow_blank: true }
end
