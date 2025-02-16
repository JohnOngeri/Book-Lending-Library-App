class CreateBorrowings < ActiveRecord::Migration[8.0]
  def change
    create_table :borrowings do |t|
      t.string :borrower_name
      t.references :book, null: false, foreign_key: true
      t.datetime :returned_at

      t.timestamps
    end
  end
end
