class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  

  belongs_to :supplier
  has_many :orders
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :carted_products
  belongs_to :user
  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
