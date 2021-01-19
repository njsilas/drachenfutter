class RecipesController < ApplicationController


  def new
    @recipe = Recipe.new
    @ingredients = Ingredient.all
    @ingredient = Ingredient.new
  end

  def create
  end

  def show
    @recipe = Recipe.find_by_id(params[:id])
  end

  def index
    @ingredients = Ingredient.pluck(:name).sort
    if params[:q]
      @recipes = Recipe.search_by_ingredient(params[:q]) 
    else
      @recipes = Recipe.order(:title)
    end
  end

end
