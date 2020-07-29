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
    @recipe = Recipe.create(recipe_params)
    if @recipe.save
      render :create
    else
      flash.now[:alert] = "内容を入力してください。"
      render :new
    end
  end

  def edit

  end

  def update
    @recipe.update(recipe_params)
  end

  def destroy
    @recipe.destroy
  end

  def select
    @recipes = Recipe.all.includes(:user)
  end

  def search
    @recipes = Recipe.search(params[:keyword])
  end

  private

  def set_recipe
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
