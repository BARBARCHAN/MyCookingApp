class CommentsController < ApplicationController

  
  def create
   @comment = Comment.create(comment_params)
    respond_to do |format|
      format.html { redirect_to recipe_path(params[:recipe_id])  }
      format.json
    end
  end

  def edit
    @recipe = Recipe.find(params[:recipe_id])
    @comment = Comment.find(params[:id])
    @comments = @recipe.comments.includes(:user)
  end

  def update
    @comment = Comment.update(comment_params)
  end

  def destroy

  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, recipe_id: params[:recipe_id])
  end
end
