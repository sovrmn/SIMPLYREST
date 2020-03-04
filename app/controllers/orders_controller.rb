class OrdersController < ApplicationController
  before_action :set_restaurant

  def index

    if params[:supplier].present?
      #improve search (ILIKE %)
      sql_query = "suppliers.name ILIKE :suppliers"

      @orders = @restaurant.orders.joins(:supplier).where(
        sql_query,
        suppliers: "%#{params[:supplier]}%"
      ).order(:id).reverse_order
    else
      @orders = @restaurant.orders.order(:id).reverse_order
    end
    @order = Order.new
  end

  def new
    @order = Order.new
  end

  def create
    restaurant = Restaurant.where(user: current_user).first

    items = params[:order][:order_items_attributes].values
    items_by_supplier = items.group_by do |item|
      SupplierItem.find(item[:supplier_item_id]).supplier
    end
    items_by_supplier.each do |supplier, items|
      order = Order.create(
        validated:false,
        restaurant: restaurant,
        supplier: supplier
      )
      items.each do |item|
        supplier_item = SupplierItem.find(item[:supplier_item_id])
        item = OrderItem.create(
          quantity: item[:quantity],
          supplier_item_id: item[:supplier_item_id],
          price: supplier_item.price_per_product * item[:quantity].to_f,
          order:order
        )
      end
      order.total = order.order_items.sum(:price).round(2)
      order.order_number = "BC-#{order.id}-#{Date.today.year}-#{Date.today.month.to_s.rjust(2,'0')}"
      order.save!
    end

    redirect_to restaurant_orders_path(restaurant)

  end


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












