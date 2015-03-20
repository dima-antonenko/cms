class ProductCategory < ActiveRecord::Base
	has_many :product_categories
	belongs_to :product_category
	has_many :products

	has_attached_file :image, :styles => { :medium => "340x280>", :thumb => "137x137>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
