class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :restaurant_recipes
  has_many :orders
  has_many :suppliers, through: :orders
  has_many :inventory_items
  has_many :products, through: :inventory_items
  has_many :recipe_sales
  has_many :recipes, through: :restaurant_recipes

end
