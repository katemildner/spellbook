class AddUserListIdToSpellList < ActiveRecord::Migration[5.2]
  def change
    add_reference :spell_lists, :user_list, foreign_key: true
  end
end
