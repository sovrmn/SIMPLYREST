class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients
  has_many :products, through: :ingredients
  has_many :recipe_sales
  has_many :restaurant_recipes
end
