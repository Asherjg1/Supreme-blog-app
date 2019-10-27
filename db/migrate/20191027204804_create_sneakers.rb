class CreateSneakers < ActiveRecord::Migration[6.0]
  def change
    create_table :sneakers do |t|
      t.string :brand
      t.integer :price
      t.string :condition
      t.string :name
      t.integer :hypefactor
      t.timestamps
    end
  end
end
