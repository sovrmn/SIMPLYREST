class InventoryItemsController < ApplicationController
  before_action :set_restaurant, only: :index

  def index
    @inventory_items = @restaurant.inventory_items
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

  private

  def set_restaurant
    @restaurant = current_user.restaurants.first #on ne récupère que le 1er restaurant du current user car il n'en a qu'un
  end
  #Restaurant.first

  def inventory_item_params
    params.require(:inventory_item).permit(:quantity)
  end

end



