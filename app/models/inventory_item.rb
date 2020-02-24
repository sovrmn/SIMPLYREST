class InventoryItem < ApplicationRecord
  belongs_to :restaurant
  belongs_to :product
end
