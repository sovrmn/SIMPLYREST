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

  def new
    @order = Order.new
  end

  def create
    # Trouver le restaurant avec l'utilisateur en cours
    @restaurant = Restaurant.where(user: current_user).first
    # Creer l'order item
    @order = Order.new(order_params)
    @order.restaurant = @restaurant
    if @order.save
    # Redirection vers les orders pour validation
      redirect_to restaurant_orders_path(@restaurant)
    else
    # Sinon rester sur la page d'inventories
      render "/inventory_items/index"
    end
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to restaurant_orders_path(@restaurant)
  end

  private

  def order_params
    params.require(:order).permit(:delivered, :validated)
  end

  def set_restaurant
    @restaurant = current_user.restaurants.first
  end

end












