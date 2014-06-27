class StaticPagesController < ApplicationController

	include ApplicationHelper

    # before_action :signed_in_user

    def index
        @users = User.all
    end

	def home
        # @micropost = current_user.microposts.build if signed_in?
	end

	def MyPage
        if signed_in?
            @micropost  = current_user.microposts.build
            @feed_items = current_user.feed.paginate(page: params[:page])
        end
        # @user = User.find(params[:id])
        # @microposts = @user.microposts.paginate(page: params[:page])
	end

    def iam
        @painting = current_user.paintings.build()
        # @image = current_user.paintings
    end

    def weare
    end

    def memory
    end


    def board
        # @boards = Freeboard.all
        # # @board = current_user.freeboards.build()

        # @boards = Sellbuyboard.all
        # # @board = current_user.sellbuyboards.build()

        # @boards = Letsboard.all

        # @boards = Shellboard.all

        # @boards = Infoboard.all
    end


	private

  	 def user_params
  	 	params.require(:user).permit(:image, :name, :email, :password, :password_confirmation)
  	 end

     def painting_params
        params.require(:painting).permit(:image)
     end
end