class AdministratorController < ApplicationController

	before_action :authenticate_user!

	layout "admin"

	def dashboard
		render "administrator/dashboard"
	end

	
end

