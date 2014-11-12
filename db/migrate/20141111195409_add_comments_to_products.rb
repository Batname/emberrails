class AddCommentsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :comm, :string
  end
end
