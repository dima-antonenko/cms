class AdministratorController < ApplicationController

	layout "admin"

	def dashboard
		render "administrator/dashboard"
	end
end
