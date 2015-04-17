class Administrator::PostsController < AdministratorController
  
   before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
    render 'administrator/posts/index'
  end

  def edit
    @post = Post.find(params[:id])
    render 'administrator/posts/edit'
  end

    def new
      @post = Post.new
    end

  # POST /product_categories
  # POST /product_categories.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post_category.save
        format.html { redirect_to '/administrator/posts', notice: 'Product category was successfully created.' }
        format.json { render :index, status: :created, location: @post_category }
      else
        format.html { render :new }
        format.json { render json: @post_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_categories/1
  # PATCH/PUT /product_categories/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to '/administrator/posts', notice: 'Product category was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @product_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_categories/1
  # DELETE /product_categories/1.json
  def destroy
    @post_category.destroy
    respond_to do |format|
      format.html { redirect_to '/administrator/posts', notice: 'Product category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def post_params
      params.require(:post).permit(:title, :text, :lead,
        :meta_title, :meta_description, :meta_keywords,  :avatar_file_name, :avatar_content_type, :avatar_file_size, :avatar_updated_at,
        :avatar)
  end

  def set_post
      @post = Post.find(params[:id])
  end

end