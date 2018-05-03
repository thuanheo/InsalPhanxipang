class Product < ApplicationRecord
  belongs_to :category
  has_many :product_sizes
  has_many :product_bills
  scope :find_by_products, -> category_id {where category_id: category_id }
end
