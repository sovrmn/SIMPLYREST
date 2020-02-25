class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :suppliers, :type, :typology
  end
end
