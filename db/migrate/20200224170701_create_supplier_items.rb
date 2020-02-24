class CreateSupplierItems < ActiveRecord::Migration[6.0]
  def change
    create_table :supplier_items do |t|
      t.float :price_per_product
      t.references :supplier, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
