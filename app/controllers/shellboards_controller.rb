class ShellboardsController < ApplicationController
	include ApplicationHelper


	def index
		@boards = Shellboard.all
		# @board = current_user.freeboards.build()
		# @boards = @user.freeboards.paginate(page: params[:page])
	end

	def show
		@board = Shellboard.find(params[:id])
		@id = params[:id]
		Shellboard.increment_counter(:hits, @id)
		# redirect_to board_path
	end


	def new
		@board = Shellboard.new
		render 'new'
	end

	def create
		@board = current_user.shellboards.build(shellboard_params)
		@board.save
		redirect_to board_shellboard_path

	end

	private
		def shellboard_params
			params.require(:shellboard).permit(:subject, :memo)
		end
end
