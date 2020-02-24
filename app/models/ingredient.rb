class Ingredient < ApplicationRecord
  belongs_to :product
  belongs_to :recipe
end
