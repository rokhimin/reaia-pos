class Product < ApplicationRecord
  belongs_to :category
  has_many :sale_items
  has_many :stock_mutations

  before_create :generate_sku

  private

  def generate_sku
    self.sku ||= "SKU-#{SecureRandom.hex(4).upcase}"
  end
end
