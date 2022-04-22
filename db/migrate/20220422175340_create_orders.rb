class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :customer_name, null: false
      t.string :customer_email, null: false
      t.string :status, null: false
      t.timestamp :order_date, null: false  

      t.timestamps
    end
  end
end
