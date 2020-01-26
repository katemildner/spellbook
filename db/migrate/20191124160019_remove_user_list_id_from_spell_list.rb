class RemoveUserListIdFromSpellList < ActiveRecord::Migration[5.2]
  def change
    remove_column :spell_lists, :user_list_id
  end
end
