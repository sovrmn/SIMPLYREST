class OrdersController < ApplicationController
  before_action :set_restaurant
  def index
     if params[:supplier].present?
      #improve search
      @orders = @restaurant.orders.joins(:supplier).where(suppliers: { name: params[:supplier] })
    else
       @orders = @restaurant.orders
    end
  end

  def new
    @order = Order.new
  end

  def search


  end

  private

  def order_params
    #params.require(:order).permit()
  end

  def set_restaurant
    @restaurant = current_user.restaurants.first
  end

end










