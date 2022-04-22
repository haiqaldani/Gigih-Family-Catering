class CreateCategorymenus < ActiveRecord::Migration[7.0]
  def change
    create_table :categorymenus do |t|
      t.integer :menu_id, null:false
      t.integer :category_id, null:false

      t.timestamps
    end
  end
end
