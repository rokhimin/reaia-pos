class Sale < ApplicationRecord
  belongs_to :user
  has_many :sale_items, dependent: :destroy
  has_one :payment, dependent: :destroy
end
