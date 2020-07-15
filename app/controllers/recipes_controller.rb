class RecipesController < ApplicationController
  def index
   
  end

  def show
    @recipe = Recipe.with_attached_images.find(31)
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
      :howto5,
      images:[]
    )
  end
end
