require 'pry'
class BeveragesController < ApplicationController

    def index
        @beverages = Beverage.all
        render json: @beverages
    end

    def show
        @beverage = Beverage.find(params[:id])
        render json: @beverage
    end

    def create
        @beverage = Beverage.new(beverageParams)
        if @beverage.save
            render json: {beverage: @beverage}
        else
            render json: {errors: @beverage.errors.full_messages}
        end
    end

    def update
        @beverage = Beverage.find(params[:id])
        @beverage.update(beverageParams)
        render json: {beverage: @beverage}
    end

    private

    def beverageParams
        params.require(:beverage).permit(:id, :name, :user_id, :base_flavor, :secondary_flavor, :water_type, :extra_flavor)
    end

end
