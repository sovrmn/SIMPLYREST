class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def search
    if params[:supplier].present?
      @orders = Order.where(supplier: params[query])
    else
      @orders = Order.all
    end
  end

  private

  def order_params
    #params.require(:order).permit()
  end

end

