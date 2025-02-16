# app/models/borrowing.rb
class Borrowing < ApplicationRecord
  belongs_to :book

  validates :book, presence: true
  validates :book_id, uniqueness: { scope: [:book_id, :returned_at], message: "Book is already borrowed" }
  validates :borrower_name, presence: true

  validate :book_has_title_and_author

  private

  def book_has_title_and_author
    return if book.nil?
    errors.add(:book, 'must have a title and author') if book.title.blank? || book.author.blank?
  end
end