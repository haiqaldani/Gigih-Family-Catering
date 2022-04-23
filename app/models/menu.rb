class Menu < ApplicationRecord
  has_many :categorymenus, dependent: :destroy
  has_many :categories, through: :categorymenus

  validates :name, presence: true
  validates :price, presence: true
  validates :description, length: {maximum: 150}
end
