class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @ingredient.save
      redirect_to ingredients_path
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name)
  end
end
