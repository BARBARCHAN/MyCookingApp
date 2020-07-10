class RecipesController < ApplicationController
  def index
  end

  def new
    @recipe = Recipe.new
  end

  def create
    # binding.pry

  end

  def show
  end
end
