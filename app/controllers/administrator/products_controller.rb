class Administrator::ProductsController < AdministratorController
	def index
		@products = Product.all
		render 'administrator/products/index'
	end

	def edit
		@product = Product.find(params[:id])
		#render 'administrator/products/edit'
  	end
end