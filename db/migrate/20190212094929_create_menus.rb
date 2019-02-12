class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :title
      t.string :category
      t.integer :price

      t.timestamps
    end
  end
end