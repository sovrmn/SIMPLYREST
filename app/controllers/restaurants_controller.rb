class RestaurantsController < ApplicationController

  def show
    #@restaurant = Restaurant.find(params[:id])
    @restaurant = current_user.restaurants.first # astuce pour tomber toujours sur le bon restau
    @topfive = @restaurant.inventory_items.sorted.limit(5)
  end





  # def set_restaurant
  #   @restaurant = current_user.restaurants.first #on ne récupère que le 1er restaurant du current user car il n'en a qu'un
  # end


end
