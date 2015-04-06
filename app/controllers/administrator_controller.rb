class AdministratorController < ApplicationController

	layout "admin"

	def dashboard
		render "administrator/dashboard"
	end

	def product_categories_all
		@product_categories = ProductCategory.all
		render "/administrator/product_categories/index"
	end


end
