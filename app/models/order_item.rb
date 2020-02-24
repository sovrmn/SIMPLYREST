class OrderItem < ApplicationRecord
  belongs_to :supplier_item
  belongs_to :order
end
