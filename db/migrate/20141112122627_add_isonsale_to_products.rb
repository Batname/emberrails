class AddIsonsaleToProducts < ActiveRecord::Migration
  def change
    add_column :products, :isOnSale, :boolean, default: false
  end
end
