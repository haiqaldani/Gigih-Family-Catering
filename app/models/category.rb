class Category < ApplicationRecord
  has_many :categorymenus

  validates :name, presence: true
end
