class SaleItem < ApplicationRecord
  belongs_to :sale
  belongs_to :product

  before_save :set_subtotal

  def set_subtotal
    self.subtotal = quantity * price
  end
end
