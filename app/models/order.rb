class Order < ApplicationRecord
  has_many :order_details

  validates :customer_name, presence: true
  validates :customer_email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address"}
  
  validates :status, presence:true
  validates :order_date, presence:true
end
