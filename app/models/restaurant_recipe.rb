class RestaurantRecipe < ApplicationRecord
  belongs_to :recipe
  belongs_to :restaurant
end
