class OrderDetail < ApplicationRecord
  belongs_to :menus

  validates :order_id, presence: true
  validates :menu_id, presence: true
  validates :price_id, presence: true
  validates :quantity_id, presence: true
end
