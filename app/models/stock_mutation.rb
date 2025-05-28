class StockMutation < ApplicationRecord
  belongs_to :product

  enum kind: { in: "in", out: "out" }
end
