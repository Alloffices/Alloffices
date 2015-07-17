class MainsController < ApplicationController
	def index
		@lead = Lead.new
	end
end
