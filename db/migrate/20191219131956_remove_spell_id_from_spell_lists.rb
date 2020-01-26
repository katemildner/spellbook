class RemoveSpellIdFromSpellLists < ActiveRecord::Migration[5.2]
  def up
    remove_column :spell_lists, :spell_id, :integer
  end

  def down
    add_column :spell_lists, :spell_id, :integer
    add_index :spell_lists, :spell_id
  end
end
