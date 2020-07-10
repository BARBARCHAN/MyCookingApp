class RecipesController < ApplicationController
  def index
  end

  def new
    @recipe = Recipe.new
  end

  def create
    Recipe.create(recipe_params)
  end

  def show
  end

  private

  def recipe_params
    params.require(:recipe).permit(
      :name,
      :category,
      :material,
      :howto1,
      :howto2,
      :howto3,
      :howto4,
      :howto5
    )
  end
end
