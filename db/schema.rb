# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_27_103540) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.float "quantity"
    t.bigint "product_id", null: false
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_ingredients_on_product_id"
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id"
  end

  create_table "inventory_items", force: :cascade do |t|
    t.float "quantity"
    t.bigint "restaurant_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "optimal_quantity"
    t.index ["product_id"], name: "index_inventory_items_on_product_id"
    t.index ["restaurant_id"], name: "index_inventory_items_on_restaurant_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.float "quantity"
    t.string "unit"
    t.float "price"
    t.boolean "completed"
    t.bigint "supplier_item_id", null: false
    t.bigint "order_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["supplier_item_id"], name: "index_order_items_on_supplier_item_id"
  end

  create_table "orders", force: :cascade do |t|
    t.float "total"
    t.string "order_number"
    t.boolean "delivered"
    t.bigint "restaurant_id", null: false
    t.bigint "supplier_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "validated", default: false
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id"
    t.index ["supplier_id"], name: "index_orders_on_supplier_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "unit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipe_sales", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "restaurant_id", null: false
    t.bigint "recipe_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_recipe_sales_on_recipe_id"
    t.index ["restaurant_id"], name: "index_recipe_sales_on_restaurant_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "restaurant_recipes", force: :cascade do |t|
    t.integer "plate"
    t.bigint "recipe_id", null: false
    t.bigint "restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_restaurant_recipes_on_recipe_id"
    t.index ["restaurant_id"], name: "index_restaurant_recipes_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_restaurants_on_user_id"
  end

  create_table "supplier_items", force: :cascade do |t|
    t.float "price_per_product"
    t.bigint "supplier_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_supplier_items_on_product_id"
    t.index ["supplier_id"], name: "index_supplier_items_on_supplier_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "typology"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "ingredients", "products"
  add_foreign_key "ingredients", "recipes"
  add_foreign_key "inventory_items", "products"
  add_foreign_key "inventory_items", "restaurants"
  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "supplier_items"
  add_foreign_key "orders", "restaurants"
  add_foreign_key "orders", "suppliers"
  add_foreign_key "recipe_sales", "recipes"
  add_foreign_key "recipe_sales", "restaurants"
  add_foreign_key "recipes", "users"
  add_foreign_key "restaurant_recipes", "recipes"
  add_foreign_key "restaurant_recipes", "restaurants"
  add_foreign_key "restaurants", "users"
  add_foreign_key "supplier_items", "products"
  add_foreign_key "supplier_items", "suppliers"
end
