class StockMutation < ApplicationRecord
  belongs_to :product

  enum mutation_type: { stock_in: 0, stock_out: 1 }
end
