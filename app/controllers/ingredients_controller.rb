class IngredientsController < ApplicationController

    def index
        @ingredients = Ingredient.all
        render json: @ingredients
    end

    def show
        @ingredient = Ingredient.find(params[:id])
        render json: @ingredient, status :ok
    end

    def create
        @ingredient = Ingredient.create()
    end

    def update
        @ingredient = Ingredient.find(params[:id])
        @ingredient.update(ingredientParams)
        render json: {ingredient: @ingredient}
    end

    private

    def ingredientParams
        params.require(:ingredient).permit(:id, :name, :beverage_id)
    end

end
