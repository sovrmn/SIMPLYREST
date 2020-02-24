class CreateRestaurantRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurant_recipes do |t|
      t.integer :plate
      t.references :recipe, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
