class SellbuyboardsController < ApplicationController
	include ApplicationHelper


	def index
		@boards = Sellbuyboard.all
		# @board = current_user.sellbuyboards.build()
		# @boards = @user.sellbuyboards.paginate(page: params[:page])
	end

	def show
		@board = Sellbuyboard.find(params[:id])
		@id = params[:id]
		Sellbuyboard.increment_counter(:hits, @id)
		# redirect_to board_path
	end


	def new
		@board = Sellbuyboard.new
		render 'new'
	end

	def create
		@board = current_user.sellbuyboards.build(freeboard_params)
		@board.save
		redirect_to board_freeboard_path

	end

	private
		def freeboard_params
			params.require(:sellbuyboard).permit(:subject, :memo)
		end
end
