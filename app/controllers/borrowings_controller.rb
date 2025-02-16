class BorrowingsController < ApplicationController
  before_action :set_borrowing, only: %i[show edit update destroy return_book], unless: :borrower_history?

  def index
    @borrowings = Borrowing.all
    @available_books = Book.where(id: @borrowings.map(&:book_id).uniq - @borrowings.where(returned_at: nil).map(&:book_id))
  end

  def show
    @borrowing = Borrowing.find(params[:id])
  end

  def new
    @borrowing = Borrowing.new
  end

  def create
    @borrowing = Borrowing.new(borrowing_params)
    if @borrowing.save
      redirect_to @borrowing, notice: 'Borrowing record was successfully created.'
    else
      render :new
    end
  end

  def edit
    @borrowing = Borrowing.find(params[:id])
  end

  def update
    if @borrowing.update(borrowing_params)
      redirect_to @borrowing, notice: 'Borrowing record was successfully updated.'
    else
      render :edit
    end
  end

  def return_book
    @borrowing.update(returned_at: Time.current)
    redirect_to borrowings_path, notice: 'Book returned successfully.'
  end
def borrower_history?
  action_name == 'borrower_history'
end
  # app/controllers/borrowings_controller.rb
# app/controllers/borrowings_controller.rb
# app/controllers/borrowings_controller.rb
def borrower_history
  if params[:borrower_name].present?
    @borrower_name = params[:borrower_name]
    @borrowings = Borrowing.where(borrower_name: @borrower_name)
    puts "Borrowings: #{@borrowings.inspect}"
  end
  render 'borrowings/borrower_history'
end
  

  def set_borrowing
    borrowing = Borrowing.find(params[:id])
  end

  def borrowing_params
    params.require(:borrowing).permit(:borrower_name, :book_id, :returned_at)
  end
  # app/controllers/borrowings_controller.rb
  def destroy
    @borrowing.destroy
    respond_to do |format|
      format.html { redirect_to borrowings_path, notice: "Record deleted successfully." }
      format.json { head :no_content }
    end
  end
  
  end
  
