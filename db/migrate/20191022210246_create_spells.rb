class CreateSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :spells do |t|
      t.string :name
      t.integer :level
      t.string :range
      t.string :school
      t.string :casting_time
      t.string :duration
      t.string :description_short
      t.text :description_long

      t.timestamps
    end
  end
end
