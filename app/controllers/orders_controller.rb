class OrdersController < ApplicationController
  before_action :set_restaurant

  def index

    if params[:supplier].present?
      #improve search (ILIKE %)
      sql_query = "suppliers.name ILIKE :suppliers"

      @orders = @restaurant.orders.joins(:supplier).where(sql_query, suppliers: "%#{params[:supplier]}%")
    else
      @orders = @restaurant.orders
    end
    @order = Order.new
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to restaurant_orders_path(@restaurant)
  end

  private

  def order_params
    params.require(:order).permit(:delivered)
  end

  def set_restaurant
    @restaurant = current_user.restaurants.first
  end

end












