class CreateStockMutations < ActiveRecord::Migration[8.0]
  def change
    create_table :stock_mutations do |t|
      t.references :product, null: false, foreign_key: true
      t.integer :quantity
      t.string :kind
      t.string :note

      t.timestamps
    end
  end
end
