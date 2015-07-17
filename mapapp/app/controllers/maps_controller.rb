class MapsController < ApplicationController

	def index
		@maps = Map.all.order('created_at DESC')
	end

	def new
		@map = Map.new
	end

	def show
		@map = Map.find(params[:id])
	end

	def create
		@map = Map.new(map_params)
		if @map.save
			redirect_to @map
		else
			render 'new'
		end
	end

	def edit
		@map = Map.find(params[:id])
	end

	def update
		@map = Map.find(params[:id])
		
		if @map.update(params[:map].permit(:title, :description))
			redirect_to map_path(@map)
		else
			render 'edit'
		end
	end

	def destroy
		@map = Map.find(params[:id])
		@map.destroy
		redirect_to root_path
	end

	private

	def map_params
		params.require(:map).permit(:title, :description)
	end
end
