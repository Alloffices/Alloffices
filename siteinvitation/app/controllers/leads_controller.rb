class LeadsController < ApplicationController
	def create
		@lead = Lead.new(lead_params)
		if @lead.save
			redirect_to root_path, notice: "Thanks for signing up"
		else
			redirect_to root_path, alert: "Failed to signup"
		end

	end

	private

	def lead_params
		params.require(:lead).permit(:name, :email, :devise)
	end

end
