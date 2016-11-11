class IngredientsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.create(ingredient_params)
    redirect_to recipe_ingredient_path(@recipe, @ingredient)
  end

  def edit
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(ingredient_params)
    redirect_to recipe_ingredient_path(@recipe, @ingredient)
  end

  def show
    @ingredient =  Ingredient.find(params[:id])
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    recipe = @ingredient.recipe
    @ingredient.destroy
    redirect_to recipe_path(recipe)
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :amount)
  end
end
