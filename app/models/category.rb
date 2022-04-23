class Category < ApplicationRecord
  has_many :categorymenus, dependent: :destroy
  has_many :menus, through: :categorymenus
  
  validates :name, presence: true
end
