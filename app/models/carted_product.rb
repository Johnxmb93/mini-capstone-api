class CartedProduct < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :products
  belongs_to :user
end
