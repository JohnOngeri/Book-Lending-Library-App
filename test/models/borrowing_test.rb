require "test_helper"

class BorrowingTest < ActiveSupport::TestCase
  def setup
    @book = Book.create(title: "The Hobbit", author: "J.R.R. Tolkien")
    @borrowing = Borrowing.new(borrower_name: "John Doe", book: @book)
  end

  test "borrowing should be valid" do
    assert @borrowing.valid?
  end

  test "borrower name should be present" do
    @borrowing.borrower_name = nil
    assert_not @borrowing.valid?, "Saved the borrowing without a borrower name"
  end

  test "should not save borrowing without a book" do
    @borrowing.book = nil
    assert_not @borrowing.valid?, "Saved the borrowing without associating a book"
  end
end
