class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def create
  end

  def edit
  end

  def new
    @recipe = Recipe.new
  end
end
