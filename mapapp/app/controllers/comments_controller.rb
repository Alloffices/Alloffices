class CommentsController < ApplicationController

	def create

		#this will find the comment with its id
		@map = Map.find(params[:map_id])

		#this will create the  comment in the form
		@comment = @map.comments.create(params[:comment].permit(:name, :description))

		#once the comment is created this wil redirect to the map
		redirect_to map_path(@map)
	end

	def destroy
		@map = Map.find(params[:map_id])
		@comment = @map.comments.find(params[:id])
		@comment.destroy
		
		redirect_to map_path(@map)
	end
end
