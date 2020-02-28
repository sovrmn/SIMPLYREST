class OrderItem < ApplicationRecord
  belongs_to :supplier_item
  belongs_to :order
  has_many :products, through: :supplier_items

end
