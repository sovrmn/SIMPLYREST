class Product < ApplicationRecord
  has_many :ingredients
  has_many :suppliers

end
