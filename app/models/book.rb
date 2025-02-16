# app/models/book.rb
class Book < ApplicationRecord
  has_many :borrowings

  validates :title, presence: true
  validates :author, presence: true
end