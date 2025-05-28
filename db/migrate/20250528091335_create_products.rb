class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :sku
      t.integer :stock
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
    add_index :products, :sku
  end
end
