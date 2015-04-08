class Administrator::ProductCategoriesController < AdministratorController
	def index
		@product_categories = ProductCategory.all
		render 'administrator/product_categories/index'
	end

	def edit
		@product_category = ProductCategory.find(params[:id])
		render 'administrator/product_categories/edit'
  	end
end