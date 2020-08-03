class CommentsController < ApplicationController

  
  def create
    Comment.create(comment_params)
    redirect_to root_path
  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, recipe_id: params[:recipe_id])
  end
end
