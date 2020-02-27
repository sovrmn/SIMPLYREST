class OrderItemsController < ApplicationController

  def update
    @restaurant = current_user.restaurants.first

    @order_item = OrderItem.find(params[:id])
    @order_item.price = params[:order_item][:quantity].to_f * @order_item.supplier_item.price_per_product

    @order_item.update(order_item_params)
    redirect_to restaurant_orders_path(@restaurant)
  end

  private

  def order_item_params
    params.require(:order_item).permit(:quantity)
  end


end
