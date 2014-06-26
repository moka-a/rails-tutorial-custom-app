class FreeboardsController < ApplicationController
	include ApplicationHelper


	def index
		@boards = Freeboard.all
		@board = current_user.freeboards.build()
		# @boards = @user.freeboards.paginate(page: params[:page])
	end

	def show
		@board = Freeboard.find(params[:id])
		@id = params[:id]
		Freeboard.increment_counter(:hits, @id)
		# redirect_to board_path
	end


	def new
		@board = Freeboard.new
		render 'new'
	end

	def create
		@board = current_user.freeboards.build(freeboard_params)
		@board.save
		redirect_to board_freeboard_path

	end

	private
		def freeboard_params
			params.require(:freeboard).permit(:subject, :memo)
		end
end
