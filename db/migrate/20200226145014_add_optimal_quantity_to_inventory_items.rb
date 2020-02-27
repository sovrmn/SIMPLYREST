class AddOptimalQuantityToInventoryItems < ActiveRecord::Migration[6.0]
  def change
    add_column :inventory_items, :optimal_quantity, :float
  end
end
