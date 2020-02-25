class Supplier < ApplicationRecord
  has_many :supplier_items
  has_many :products, through: :supplier_items
  has_many :orders
  has_many :restaurants, through: :orders
end
