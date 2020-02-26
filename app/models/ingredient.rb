class Ingredient < ApplicationRecord
  before_save :compute_optimal_stock

  belongs_to :product
  belongs_to :recipe

  def compute_optimal_stock

  end
end
