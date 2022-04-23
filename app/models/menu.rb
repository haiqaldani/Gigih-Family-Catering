class Menu < ApplicationRecord
  has_many :categorymenus
  has_many :order_details

  validates :name, presence: true
  validates :price, presence: true
  validates :description, length: {maximum: 150}
end
