class Order < ApplicationRecord
  belongs_to :restaurant
  belongs_to :supplier
  has_many :order_items
  has_many :supplier_items, through: :order_items
end
