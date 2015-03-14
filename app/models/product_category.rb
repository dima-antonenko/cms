class ProductCategory < ActiveRecord::Base
	has_many :product_categories
	belongs_to :product_category
	has_many :products
end
