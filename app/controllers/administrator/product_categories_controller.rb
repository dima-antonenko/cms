class Administrator::ProductCategroriesController < AdministratorController
	def index
		render 'administrator/product_categories/index'
	end

	def edit
		render 'administrator/product_categories/edit'
  	end
end