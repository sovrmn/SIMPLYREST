class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
