class StaticController < ApplicationController
	def home
		#@phone = SiteVariable.find(1) 
		render 'home'
	end
end
