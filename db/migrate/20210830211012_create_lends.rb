class CreateLends < ActiveRecord::Migration[6.1]
  def change
    create_table :lends do |t|
      t.belongs_to :book
      
      t.timestamps
    end
  end
end
