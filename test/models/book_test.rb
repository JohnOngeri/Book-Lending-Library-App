require "test_helper"

class BookTest < ActiveSupport::TestCase
  def setup
    @book = Book.new(title: "The Hobbit", author: "J.R.R. Tolkien")
  end

  test "book should be valid" do
    assert @book.valid?
  end

  test "title should be present" do
    @book.title = nil
    assert_not @book.valid?, "Saved the book without a title"
  end

  test "author should be present" do
    @book.author = nil
    assert_not @book.valid?, "Saved the book without an author"
  end
end

