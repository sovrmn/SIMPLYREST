class InventoryItem < ApplicationRecord
  before_save :compute_optimal_stock

  belongs_to :restaurant
  belongs_to :product

  def compute_optimal_stock
    @recipes_with_same_ingredient = Ingredient.where(product: self.product)
    @optimal_stock_total = 0
    @recipes_with_same_ingredient.each do |ingredient|
      @restaurant_recipe = RestaurantRecipe.where(restaurant: self.restaurant, recipe: ingredient.recipe)
      @plate = @restaurant_recipe.first.plate
      @optimal_stock_per_recipe = ingredient.quantity * @plate
      @optimal_stock_total += @optimal_stock_per_recipe
    end
    self.optimal_quantity = @optimal_stock_total
  end

  def quantity_to_order
    ((optimal_quantity - quantity) > 0) ? (optimal_quantity - quantity).ceil : 0
  end
end
