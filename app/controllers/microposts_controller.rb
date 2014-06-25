class MicropostsController < ApplicationController
  before_action :signed_in_user

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      # flash[:success] = "Micropost created!"
      redirect_to mypage_path
    else
      @feed_items = []
      render 'static_pages/MyPage'
    end
  end

  def destroy
  end

  private

    def micropost_params
      params.require(:micropost).permit(:content)
    end
end