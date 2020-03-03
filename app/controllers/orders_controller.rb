require "pry"

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
    @inventory_items = @restaurant.inventory_items
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

  # def create

  #   # Trouver le restaurant avec l'utilisateur en cours
  #   @restaurant = Restaurant.where(user: current_user).first
  #   @inventory_items = @restaurant.inventory_items
  #   # Creer l'order item
  #   @order = Order.new(order_params)
  #   @order.restaurant = @restaurant

  #   @order.order_items.reject{|order| order.supplier_item_id.nil? || order.quantity.nil? }.each do |order_item|
  #     supplier_item = SupplierItem.find(order_item.supplier_item_id)

  #     if Order.find_by(supplier: supplier_item.supplier, restaurant: @restaurant, validated: false)
  #       existing_order = Order.find_by(supplier: supplier_item.supplier, restaurant: @restaurant, validated: false)
  #       order_item.order = existing_order
  #       order_item.price = order_item.quantity * supplier_item.price_per_product
  #       existing_order.total += order_item.price
  #       existing_order.save!

  #       order_item.save!
  #     else
  #       new_order = Order.new(supplier: supplier_item.supplier, restaurant: @restaurant)
  #       order_item.order = new_order
  #       order_item.price = order_item.quantity * supplier_item.price_per_product
  #       new_order.total = order_item.price
  #       new_order.order_number = "BC-#{new_order.id}-#{Date.today.year}-#{Date.today.month}"
  #       new_order.save!

  #       order_item.save!
  #     end
  #   end
  #   redirect_to restaurant_orders_path(@restaurant)
  # end

  def update

    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to restaurant_orders_path(@restaurant)
  end

  private

  def order_params
    params.require(:order).permit(:delivered, :validated, order_items_attributes: [:id, :quantity, :supplier_item_id])
  end

  def set_restaurant
    @restaurant = current_user.restaurants.first
  end

end












