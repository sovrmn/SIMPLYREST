class InventoryItemsController < ApplicationController
  before_action :set_restaurant, only: :index


  def index
    @orders = @restaurant.orders.where(validated: false)
    @inventory_items = @restaurant.inventory_items
    @inventory_items = @inventory_items.where.not(optimal_quantity: 0).order("(optimal_quantity - quantity) / optimal_quantity DESC")

    @order_item = OrderItem.new
  end

  # def topfive
  #   @restaurant = current_user.restaurants.first
  #   @inventory_items = @restaurant.inventory_items
  #   return @inventory_items.where.not(optimal_quantity: 0).order("(optimal_quantity - quantity) / optimal_quantity DESC LIMIT 5")
  # end


  def update
    # on récupère l'item
    @restaurant = current_user.restaurants.first
    # @inventory_item = InventoryItem.update(inventory_item_params)


    @inventory_items = InventoryItem.where(restaurant: @restaurant)

    # @inventory_items.each do |item|
    #   @product = item.product
    # # on récupère la quantité
    #   @quantity = item.quantity
    #   @quantity = params[:inventory_item][:quantity]
    # # on update la quantité (méthode dans views)
    #   item.update(inventory_item_params)
    # end
  end

  def optimal_stock
    @restaurant = @inventory_items.restaurant
    @inventory_items.each do |item|
      #on récupère le produit de la ligne d'inventaire sélectionnée
      @product = item.product
      #on récupère toutes les recettes avec le meme ingredient @product
      #j'obtiens un array avec toutes les recettes comportant @product et avecles quantités
      @recipes_with_same_ingredient = Ingredient.where(product: @product)
      #je créé un array dans lequel je vais additionner toutes les stocks nécessaires d'un ingrédient donnée pour chaque recette
      @optimal_stock_total = 0

      @recipes_with_same_ingredient.each do |ingredient|
        #je récupère la quantité d'ingrédient pour la recette en cours d'itération
        @ingredient_quantity = ingredient.quantity
        #je récupère la recette de mon ingredient
        @recipe = ingredient.recipe
        # on récupère le plat du restaurant sur lequel on itère dans la table restaurant recipe où les plates ont été definies
        @restaurant_recipe = RestaurantRecipe.where(restaurant: @restaurant).where(recipe: @recipe)
        # on récupère le nombre de plate pour la recette instanciée précédemment
        @plate = @restaurant_recipe.plate

        # on calcule l'optimal stock du produit et pour la recette sur laquelle ont est
        @optimal_stock_per_recipe = @ingredient_quantity * @plate
        # total d'un ingrédient toutes recettes confondues
       @optimal_stock_total += @optimal_stock_per_recipe
      end
      return @optimal_stock_total
    end


  end

  # def update
  #   @inventory_item = InventoryItem.find(params[:id])
  #   @inventory_item(inventory_item_params)
  #   redirect_to restaurant_inventory_items(@inventory_item)
  # end

  # def destroy
  #   @inventory_item = InventoryItem.find(params[:id])
  #   @inventory_item.destroy
  #   redirect_to restaurant_inventory_items_path
  # end

  # def displaysupplier
  #   @inventory_item = InventoryItem.find(params[:id])
  #   @product = @inventory_item.Product
  #   @supplier_items = @product.supplier_items
  # end




  private

  def set_restaurant
    @restaurant = current_user.restaurants.first #on ne récupère que le 1er restaurant du current user car il n'en a qu'un
  end
  #Restaurant.first

  def inventory_item_params
    params.require(:inventory_item).permit(:quantity)
  end

end




