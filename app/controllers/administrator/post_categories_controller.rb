class Administrator::PostCategoriesController < AdministratorController
	def index
		@post_categories = PostCategory.all
		render 'administrator/post_categories/index'
	end

	def edit
		@post_category = PostCategory.find(params[:id])
		render 'administrator/post_categories/edit'
  	end
end