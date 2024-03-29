class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.string :name, null:false
      t.float :price, null:false
      t.string :description, limit:150

      t.timestamps
    end
  end
end
