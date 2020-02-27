class AddValidatedToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :validated, :boolean, default: false
  end
end
