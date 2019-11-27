class AddTitleToSpellLists < ActiveRecord::Migration[5.2]
  def change
    add_column :spell_lists, :title, :string
  end
end
