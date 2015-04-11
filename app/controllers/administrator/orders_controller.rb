class Administrator::OrdersController < AdministratorController
	def index
		@orders = Order.all
		render 'administrator/orders/index'
	end

	def edit
		@order = Order.find(params[:id])
  	end
end