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
end
