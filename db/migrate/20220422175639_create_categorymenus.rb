class CreateCategorymenus < ActiveRecord::Migration[7.0]
  def change
    create_table :categorymenus do |t|
      t.integer :menu_id
      t.integer :category_id

      t.timestamps
    end
  end
end
