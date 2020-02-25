class Product < ApplicationRecord
  has_many :ingredients
  has_many :supplier_items
  has_many :suppliers, through: :supplier_items
  has_many :inventory_items
  has_many :restaurants, through: :inventory_items
end
