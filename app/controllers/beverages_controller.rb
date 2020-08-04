require 'pry'
class BeveragesController < ApplicationController

    def index
        @beverages = Beverage.all
        render json: @beverages
    end

    def show
        @beverage = Beverage.find(params[:id])
        render json: @beverage, status :ok
    end

    def create
        @beverage = Beverage.create(beverageParams)
    end

    def update
        @beverage = Beverage.find(params[:id])
        @beverage.update(beverageParams)
        render json: {beverage: @beverage}
    end

    private

    def beverageParams
        params.require(:beverage).permit(:id, :name, :water, :size)
    end

end
