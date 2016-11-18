class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
    @new_cocktail = Cocktail.new
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
    @ingredients = Ingredient.all
    @review = Review.new
    @new_cocktail = Cocktail.new
    # @doses = Dose.all.select{ |dose| dose.cocktail_id = @cocktail.id }
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :description, :photo)
  end
end
