class RecipesController < ApplicationController

  def index
    if params["sort_by"] == "0"
      @recipes = Recipe.all.sort_by{|recipe| recipe.number_of_ingredients}.reverse
    else
      @recipes = Recipe.all.sort_by{|recipe| recipe.number_of_ingredients}
    end
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.create(recipe_params)
    @recipe.save
    redirect_to @recipe
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    byebug
    redirect_to @recipe
  end


  private

  def recipe_params
    params.require(:recipe).permit!
  end
end
