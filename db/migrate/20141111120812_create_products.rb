class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.integer :price
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
