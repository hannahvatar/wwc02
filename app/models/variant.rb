class Variant < ApplicationRecord
  belongs_to :product

  validates :size, presence: true
  validates :color, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :sku, presence: true, uniqueness: true
  validates :stock, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
