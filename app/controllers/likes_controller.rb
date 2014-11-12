class LikesController < ApplicationController
  def create
    user = User.find params[:user_id]
    post = Post.find params[:post_id]
    user.like!(post)
    redirect_to :back
  end

  private

  def like_params
    params.permit(:user_id, :post_id)
  end
end