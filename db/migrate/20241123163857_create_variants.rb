class CreateVariants < ActiveRecord::Migration[7.1]
  def change
    create_table :variants do |t|
      t.references :product, null: false, foreign_key: true
      t.string :size
      t.string :color
      t.decimal :price
      t.string :sku
      t.integer :stock

      t.timestamps
    end
  end
end
