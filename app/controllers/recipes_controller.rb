class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def edit
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def index
    @recipes =  Recipe.all
  end
end
