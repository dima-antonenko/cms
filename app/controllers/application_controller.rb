class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :minicart_in_head, :metrika_values

  #rescue_from ActiveRecord::RecordNotFound, with: :errors_404
  #rescue_from ActiveRecord::NoMethodError, with: :errors_404
  #rescue_from ActionController::RoutingError, with: :errors_404
  


  def after_sign_in_path_for(resource)
  	'/administrator/dashboard'
  end

  def after_sign_out_path_for(resource_or_scope)
  	 request.referrer
  end

  def minicart_in_head
    if session[:cart_id]
      @minicart =  Cart.find(session[:cart_id])
      @cart_url = "/carts/#{@minicart.id}"
    end                
  end

  def metrika_values
    @yandex_metrika = SiteVariable.find(1)
    @google_metrika = SiteVariable.find(2)
  end

  def errors_404
    response.should render_template(:file => "#{Rails.root}/public/404.html")
    logger.debug "error404 called"
  end

end
