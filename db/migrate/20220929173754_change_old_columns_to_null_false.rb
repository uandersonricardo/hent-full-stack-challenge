class ChangeOldColumnsToNullFalse < ActiveRecord::Migration[6.1]
  def change
    change_column_null :books, :name, false
    change_column_null :lends, :book_id, false
  end
end
