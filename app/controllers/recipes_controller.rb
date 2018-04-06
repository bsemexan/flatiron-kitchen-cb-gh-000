class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def create
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
