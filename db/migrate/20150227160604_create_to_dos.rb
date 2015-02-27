class CreateToDos < ActiveRecord::Migration
  def change
    create_table :to_dos do |t|
      t.string :text
      t.integer :row_order

      t.timestamps null: false
    end
  end
end
