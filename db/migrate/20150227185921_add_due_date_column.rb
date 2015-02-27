class AddDueDateColumn < ActiveRecord::Migration
  def change
    add_column :to_dos, :due_date, :date
  end
end
