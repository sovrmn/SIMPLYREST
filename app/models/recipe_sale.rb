class RecipeSale < ApplicationRecord
  belongs_to :restaurant
  belongs_to :recipe
end
