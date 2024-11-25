class Product < ApplicationRecord
  has_many :variants, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true
  validates :base_price, presence: true, numericality: { greater_than: 0 }
end
