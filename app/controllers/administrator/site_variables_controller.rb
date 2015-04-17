class Administrator::SiteVariablesController < AdministratorController

 before_action :set_site_variable, only: [:edit, :update, :destroy, :delete]

  def index
    @site_variables = SiteVariable.all
    render 'administrator/site_variables/blocks_in_header'
  end

  def blocks_in_header
    @site_variables = SiteVariable.all
    render 'administrator/site_variables/blocks_in_header'
  end

  def edit
    @site_variable = SiteVariable.find(params[:id])
    render 'administrator/site_variable/edit'
  end

    # GET /products/new
  def new
    @site_variable = SiteVariable.new
  end

 

  # POST /products
  # POST /products.json
  def create
    @site_variable = SiteVariable.new(product_params)

    respond_to do |format|
      if @site_variable.save
        format.html { redirect_to '/administrator/products', notice: 'SiteVariable was successfully created.' }
        format.json { render :show, status: :created, location: @site_variable }
      else
        format.html { render :new }
        format.json { render json: @site_variable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    @site_variable = SiteVariable.find(params[:id])
    respond_to do |format|
      if @site_variable.update(product_params)
        format.html { redirect_to '/administrator/products', notice: 'SiteVariable was successfully updated.' }
        format.json { render :index, status: :ok, location: @site_variable }
      else
        format.html { render :edit }
        format.json { render json: @site_variable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @site_variable = SiteVariable.find(params[:id])
    @site_variable.destroy
    redirect_to '/administrator/products'
  end

  private

  def site_variable_params
      params.require(:site_variable).permit(:title, :content)
  end

  def set_site_variable
      @site_variable = SiteVariable.find(params[:id])
    end

end