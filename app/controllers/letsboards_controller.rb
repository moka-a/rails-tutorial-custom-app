class LetsboardsController < ApplicationController
	include ApplicationHelper


	def index
		@boards = Letsboard.all
		# @board = current_user.freeboards.build()
		# @boards = @user.freeboards.paginate(page: params[:page])
	end

	def show
		@board = Letsboard.find(params[:id])
		@id = params[:id]
		Letsboard.increment_counter(:hits, @id)
		# redirect_to board_path
	end


	def new
		@board = Letsboard.new
		render 'new'
	end

	def create
		@board = current_user.letsboards.build(letsboard_params)
		@board.save
		redirect_to board_letsboard_path

	end

	private
		def letsboard_params
			params.require(:letsboard).permit(:subject, :memo)
		end
end
