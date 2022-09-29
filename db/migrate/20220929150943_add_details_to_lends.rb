class AddDetailsToLends < ActiveRecord::Migration[6.1]
  def change
    add_column :lends, :borrowed_at, :datetime, null: false
    add_column :lends, :returned_at, :datetime
    add_reference :lends, :user, null: false, foreign_key: true
  end
end
