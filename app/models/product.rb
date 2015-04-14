class Product < ActiveRecord::Base

	validates :name, presence: true
	validates :product_category_id, presence: true

	belongs_to :product_category
	has_many :line_items

	before_destroy :ensure_not_referenced_by_any_line_item

	has_attached_file :avatar, :styles => { :medium => "340x280>", :thumb => "242x242>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	private

	def ensure_not_referenced_by_any_line_item
		if line_items.empty? 
			return true
		else
			errors.add(:base, 'Существуют товарные позиции')
			return false
		end
	end

end
