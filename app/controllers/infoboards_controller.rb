class InfoboardsController < ApplicationController
	include ApplicationHelper


	def index
		@boards = Infoboard.all
		# @board = current_user.freeboards.build()
		# @boards = @user.freeboards.paginate(page: params[:page])
	end

	def show
		@board = Infoboard.find(params[:id])
		@id = params[:id]
		Infoboard.increment_counter(:hits, @id)
		# redirect_to board_path
	end


	def new
		@board = Infoboard.new
		render 'new'
	end

	def create
		@board = current_user.infoboards.build(infoboard_params)
		@board.save
		redirect_to board_infoboard_path

	end

	private
		def infoboard_params
			params.require(:infoboard).permit(:subject, :memo)
		end
end
