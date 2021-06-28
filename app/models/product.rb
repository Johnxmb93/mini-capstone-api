class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  
  belongs_to :supplier
  
  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
