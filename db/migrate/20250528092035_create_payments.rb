class CreatePayments < ActiveRecord::Migration[8.0]
  def change
    create_table :payments do |t|
      t.references :sale, null: false, foreign_key: true
      t.integer :amount
      t.string :method

      t.timestamps
    end
  end
end
