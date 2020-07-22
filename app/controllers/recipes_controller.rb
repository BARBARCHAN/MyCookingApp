class RecipesController < ApplicationController

  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.last(4)
  end

  def show
 
  end

  def new
    @recipe = Recipe.new
  end

  def create
    Recipe.create(recipe_params)
    # @image = Image.new(file_name: params[:file])
    # if @image.save
    #   render json: { message: "success", fileID: @image.id }, :status => 200
    # else
    #   render json: { error: @image.errors.full_messages.join(',')}, :status => 400
    # end
  end

  def edit

  end

  def update
    @recipe.update(recipe_params)
  end

  def destroy
    @recipe.destroy
  end

  private

  def set_recipe
    # binding.pry
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(
      :name,
      :category,
      :material,
      :source,
      :howto1,
      :howto2,
      :howto3,
      :howto4,
      :howto5,
      :image
    ).merge(user_id: current_user.id)
  end
end
