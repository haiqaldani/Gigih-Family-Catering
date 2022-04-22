class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.integer :order_id, null: false
      t.integer :menu_id, null: false
      t.float :price, null:false
      t.integer :quantity, null:false

      t.timestamps
    end
  end
end
