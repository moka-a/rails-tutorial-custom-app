class PaintingsController < ApplicationController
	before_action :signed_in_user, only: [:create]

	def index
		# @painting = current_user.paintings.build(painting_params)
	end

	def show
		@painting = Painting.find(params[:id])
	end

	def create
		@painting = current_user.paintings.build(painting_params)
		# Paintings.new
		@painting.save
		redirect_to mypage_iam_path
	end


	private

		def painting_params
			params.require(:painting).permit(:image)
		end
end
