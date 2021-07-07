class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  belongs_to :product
  has_many :orders
  has_many :carted_products 
end
