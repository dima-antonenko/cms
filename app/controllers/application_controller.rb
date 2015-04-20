class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :minicart_in_head

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

end
