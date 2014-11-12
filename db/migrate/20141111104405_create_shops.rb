class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :title
      t.integer :price
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
