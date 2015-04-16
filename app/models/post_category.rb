class PostCategory < ActiveRecord::Base
	has_many :posts

	has_attached_file :avatar, :styles => { :medium => "340x280>", :thumb => "242x242>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
