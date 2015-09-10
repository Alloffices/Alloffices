class WelcomesController < ApplicationController
	before_action :authenticate_user!

	def index
	end

	def show
		@user = session[:userinfo]
	end
end
