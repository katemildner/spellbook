class CreateSpellListsSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :spell_lists_spells, id: false do |t|
      t.integer :spell_list_id
      t.integer :spell_id
    end

    add_index :spell_lists_spells, :spell_list_id
    add_index :spell_lists_spells, :spell_id
  end
end
