class DropUserLists < ActiveRecord::Migration[5.2]
  def change
    drop_table :user_lists
  end
end
