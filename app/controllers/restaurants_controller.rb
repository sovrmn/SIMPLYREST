class RestaurantsController < ApplicationController

  def show
    #@restaurant = Restaurant.find(params[:id])
    @restaurant = current_user.restaurants.first # astuce pour tomber toujours sur le bon restau
  end


end
