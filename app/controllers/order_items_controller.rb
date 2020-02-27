class OrderItemsController < ApplicationController

  def create
    # Trouver le restaurant avec l'utilisateur en cours
    @restaurant = Restaurant.where(user: current_user).first
    # Creer l'order item
    @inventory_items = @restaurant.inventory_items

    supplier_item = SupplierItem.find(params[:supplier_item_id])
    @order_item = OrderItem.new(order_item_params)
    @order_item.supplier_item = supplier_item

    if Order.where(supplier: supplier_item.supplier, validated: false).empty?
      new_order = Order.create(supplier: supplier_item.supplier, restaurant: @restaurant)
      @order_item.order = new_order
      @order_item.price = @order_item.quantity * supplier_item.price_per_product
      new_order.total = @order_item.price
      new_order.order_number = "BC-#{new_order.id}-#{Date.today.year}-#{Date.today.month}"
      new_order.save
    else
      existing_order = Order.find_by(supplier: supplier_item.supplier, restaurant: @restaurant, validated: false)
      @order_item.order = existing_order
      # existing_order.total = total_order(existing_order)
      @order_item.price = @order_item.quantity * supplier_item.price_per_product
      existing_order.total += @order_item.price
      existing_order.save
    end

    if @order_item.save
    # Redirection vers les orders pour validation
      redirect_to restaurant_orders_path(@restaurant)
    else
    # Sinon rester sur la page d'inventory
      render "/inventory_items/index"
    end
  end

  # def total_order(order)
  #   @restaurant = Restaurant.where(user: current_user).first
  #   if order.restaurant == @restaurant
  #     @order_items = order.order_items
  #     total = 0
  #     @order_items.select do |orderitem|
  #       total += orderitem.price
  #     end
  #   end
  #   order.total = total
  #   return order.total
  # end




  # def showdraftorder
  #   @restaurant = Restaurant.where(user: current_user).first
  #   @order_items = OrderItem.all
  #   @draftorders = []
  #   @order_items.select do |orderitem|
  #     @draftorder = Order.find(orderitem.order_id)
  #     @draftorder.total += orderitem.price
  #     @draftorder.order_number = @draftorder.id
  #     @draftorder.delivered = false
  #     @draftorder.restaurant = @restaurant
  #     @draftorder.supplier = orderitem.supplier_item.supplier

  #     @draftorders << @draftorder
  #   end
  #   return @draftorders.all
  # end


  # def createdraftorder(supplier_item, quantity)
  #   # je récupère le prix total pour la création de l'order item (fonction du supplier item et de la quantité choisie)
  #   @price = supplier_item.price_per_product * quantity
  #   # je créé le brouillon de order pour affichage dans le panier récapitulatif par fournisseur (à ne pas sauvegarder : sauvegarde déclenchéé par validation)
  #   @draftorder = Order.new
  #   # je créé le brouillon de order pour affichage dans le panier récapitulatif par fournisseur (à ne pas sauvegarder : sauvegarde déclenchéé par validation)
  #   @order_item = OrderItem.new(quantity: quantity, unit: supplier_item.unit, price: @price,
  #    completed: false, supplier_item_id: supplier_item.id, order_id: @draftorder.id)
  #   # je sauvegarde la création de l'order item
  #   @order_item.save
  # end



  # def putiteminorder
  #   # je récupère le supplier item sélectionné (pour un produit, choix d'un fournisseur avec un prix donné)
  #   @supplier_item = SupplierItem.find(params[:id])
  #   # je récupère le supplier du supplier_item pour pouvoir accéder à tous les supplier items du fournisseur
  #   @supplier = @supplier_item.supplier
  #   # je récupère les produits et prix donnés (supplier items) pour le fournisseur sélectionné
  #   @supplier_items = SupplierItem.where(supplier: @supplier)
  #   # je récupère la liste des order-items en cours
  #   @order_items = OrderItem.all
  #   # je cherche si dans la liste des orders items créés, il y a celui avec le fournisseur choisi
  #   @draftorder = ''
  #   @supplier_items.each do |supplieritem|
  #     orderitem = OrderItem.find(supplier_item: supplieritem)
  #     if order_items.include?(orderitem)
  #       @draftorder = indexdraftorder(@supplier)
  #     end
  #   end

  #   @quantity = quantity
  #   if @draftorder = ''
  #     createdraftorder(@supplier_item, @quantity)
  #   else
  #     @draftorder = Order.find(supplier: @supplier)
  #     register_order_item = createdraftorder(@supplier_item, @quantity)
  #     register_order_item.order = @draftorder
  #   end
  # end

  private

  def order_item_params
    params.require(:order_item).permit(:quantity, :price)
  end

end
