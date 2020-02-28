class SupplierItem < ApplicationRecord
  belongs_to :supplier
  belongs_to :product
  has_many :order_items
end
