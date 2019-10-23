class CreateUserLists < ActiveRecord::Migration[5.2]
  def change
    create_table :user_lists do |t|
      t.string :list_title
    end
  end
end
