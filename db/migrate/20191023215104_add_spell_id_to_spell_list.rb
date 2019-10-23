class AddSpellIdToSpellList < ActiveRecord::Migration[5.2]
  def change
    add_reference :spell_lists, :spell, foreign_key: true
  end
end
