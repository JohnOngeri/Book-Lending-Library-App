require "test_helper"

class BorrowingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one) # Ensure there's a book available
    @borrowing = borrowings(:one) # Using fixture data
  end

  test "should get index" do
    get borrowings_url
    assert_response :success
  end

  test "should show borrowing" do
    get borrowing_url(@borrowing)
    assert_response :success
  end

  test "should get new" do
    get new_borrowing_url
    assert_response :success
  end

  test "should create borrowing" do
    assert_difference('Borrowing.count', 1) do
      post borrowings_url, params: { borrowing: { borrower_name: "Jane Doe", book_id: @book.id } }
    end
    assert_redirected_to borrowing_path(Borrowing.last)
  end

  test "should get edit" do
    get edit_borrowing_url(@borrowing)
    assert_response :success
  end

  test "should update borrowing" do
    patch borrowing_url(@borrowing), params: { borrowing: { borrower_name: "Updated Name" } }
    assert_redirected_to borrowing_url(@borrowing)
  end

  test "should destroy borrowing" do
    assert_difference('Borrowing.count', -1) do
      delete borrowing_url(@borrowing)
    end
    assert_redirected_to borrowings_url
  end
end
